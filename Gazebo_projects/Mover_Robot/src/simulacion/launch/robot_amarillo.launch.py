from launch import LaunchDescription  # Importa la clase principal para definir un Launch Description.
from launch.actions import IncludeLaunchDescription, ExecuteProcess  # Para incluir otros launch files y ejecutar procesos.
from launch.launch_description_sources import PythonLaunchDescriptionSource  # Permite cargar launch files en Python.
from launch_ros.actions import Node  # Para lanzar nodos de ROS 2.
from ament_index_python.packages import get_package_share_directory  # Para obtener rutas de paquetes instalados.
from os.path import join  # Para unir rutas de archivos de manera compatible con el sistema operativo.
from launch.substitutions import Command  # Para ejecutar comandos y usar su salida como sustitución.

# Función que genera el Launch Description. Esta es la entrada principal del archivo.
def generate_launch_description():

    # Rutas a recursos necesarios
    models_path = join(get_package_share_directory("simulacion"))  # Ruta al paquete "simulacion".
    gazebo_launch_path = join(get_package_share_directory("ros_gz_sim"), "launch", "gz_sim.launch.py")  # Ruta al launch file de Gazebo.

    # Lanzar Gazebo
    gazebo_sim = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(gazebo_launch_path),  # Incluye el launch file de Gazebo.
        launch_arguments=[("gz_args", "-r empty.sdf")],  # Argumentos para lanzar Gazebo con el mundo vacío.
    )

    # Descripción del robot (URDF/Xacro)
    robot_file = join(models_path, "robots", "caja_amarilla", "robot.urdf.xacro")  # Ruta al archivo Xacro del robot.
    robot_xml = Command(["xacro ", robot_file])  # Comando para procesar el archivo Xacro y generar URDF.

    # Publicador del estado del robot
    robot_state_publisher = Node(
        package='robot_state_publisher',  # Paquete ROS 2 para publicar el estado del robot desde su URDF.
        executable='robot_state_publisher',  # Ejecutable que publica el estado del robot.
        name='robot_state_publisher',  # Nombre del nodo.
        output='both',  # Salida tanto en pantalla como en logs.
        parameters=[{'robot_description': robot_xml, 'use_sim_time': True}],  # Parámetros, incluyendo el URDF generado y uso de tiempo simulado.
    )

    # Crear/Spawn el robot en Gazebo
    robot = ExecuteProcess(
        cmd=[
            "ros2", "run", "ros_gz_sim", "create",  # Comando para crear un modelo en Gazebo.
            "-topic", "robot_description",  # Usa el contenido del tópico `robot_description` como descripción del robot.
            "-z", "0.5",  # Posición inicial en el eje Z (elevación del robot).
        ],
        name="spawn robot",  # Nombre del proceso.
        output="both",  # Salida tanto en pantalla como en logs.
    )

    # Puente entre Gazebo y ROS (ROS-Gazebo Bridge)
    bridge = Node(
        package='ros_gz_bridge',  # Paquete ROS 2 que crea un puente entre Gazebo y ROS.
        executable='parameter_bridge',  # Ejecutable que configura el puente de parámetros.
        arguments=[
            '/model/robot/cmd_vel@geometry_msgs/msg/Twist@gz.msgs.Twist'  # Mapea el mensaje `Twist` entre ROS y Gazebo.
        ],
        output='screen',  # Salida en pantalla.
        remappings=[('/model/robot/cmd_vel', '/cmd_vel')],  # Remapea el comando de velocidad al tópico `/cmd_vel` en ROS.
    )

    # Devuelve la descripción completa del lanzamiento.
    return LaunchDescription([
        gazebo_sim,  # Lanza Gazebo.
        robot,  # Crea el robot en Gazebo.
        robot_state_publisher,  # Publica el estado del robot.
        bridge  # Configura el puente Gazebo-ROS.
    ])
