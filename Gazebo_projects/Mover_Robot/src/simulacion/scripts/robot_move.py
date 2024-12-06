#!/usr/bin/env python3
# Línea shebang para indicar que este script debe ejecutarse con Python 3.

# Importamos las bibliotecas necesarias de ROS 2 y mensajes.
import rclpy  # Biblioteca principal de ROS 2 en Python.
from rclpy.node import Node  # Clase base para crear nodos en ROS 2.
from geometry_msgs.msg import Twist  # Tipo de mensaje para comandos de movimiento.

# Definimos una clase que hereda de `Node`. Esta clase representa un nodo llamado "RobotMove".
class RobotMove(Node):
    def __init__(self):
        # Llamamos al constructor de la clase base `Node` y nombramos el nodo 'robot_move'.
        super().__init__('robot_move')

        # Creamos un publicador que envía mensajes del tipo `Twist` al tópico '/cmd_vel' con una cola de 10.
        self.publisher_ = self.create_publisher(Twist, '/cmd_vel', 10)

        # Definimos un temporizador que llama a `timer_callback` cada 0.5 segundos.
        timer_period = 0.5  # Período del temporizador en segundos.
        self.timer = self.create_timer(timer_period, self.timer_callback)

    # Método que se ejecuta cada vez que el temporizador expira.
    def timer_callback(self):
        # Creamos un mensaje del tipo `Twist`.
        msg = Twist()
        msg.linear.x = 0.5  # Velocidad lineal hacia adelante (en el eje X).
        msg.angular.z = 0.1  # Velocidad angular para girar (en el eje Z).

        # Publicamos el mensaje en el tópico '/cmd_vel'.
        self.publisher_.publish(msg)

# Función principal del script.
def main(args=None):
    # Inicializamos el sistema de ROS 2.
    rclpy.init(args=args)

    # Creamos una instancia del nodo `RobotMove`.
    robot_move = RobotMove()

    # Ejecutamos el nodo, manteniéndolo activo para procesar eventos y publicar mensajes.
    rclpy.spin(robot_move)

    # Cuando se cierra el nodo, limpiamos los recursos.
    robot_move.destroy_node()

    # Cerramos el sistema de ROS 2.
    rclpy.shutdown()

# Punto de entrada del programa. Ejecuta la función `main` si el script se ejecuta directamente.
if __name__ == '__main__':
    main()
