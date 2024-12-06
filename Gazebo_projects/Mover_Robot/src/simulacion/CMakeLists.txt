cmake_minimum_required(VERSION 3.5)  # Se requiere una versión mínima de CMake 3.5.
project(simulacion)  # Nombre del proyecto.

# Configuración predeterminada para usar C++17.
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 17)  # Establece el estándar de C++ a 17.
  set(CMAKE_CXX_STANDARD_REQUIRED ON)  # Se asegura de que sea obligatorio.
endif()

# Añade opciones de compilación adicionales para sistemas que no sean Windows.
if(NOT WIN32)
  add_compile_options(-Wall -Wextra -Wpedantic)  # Activa advertencias comunes.
endif()

# Encontrar dependencias necesarias de ROS 2.
find_package(ament_cmake REQUIRED)  # Paquete base de ament (el sistema de compilación de ROS 2).
find_package(rclcpp REQUIRED)  # Biblioteca principal de ROS 2 para C++.
find_package(geometry_msgs REQUIRED)  # Biblioteca para mensajes de geometría (Twist, Pose, etc.).

# Instala directorios relevantes del proyecto en la carpeta `share` para su uso en tiempo de ejecución.
install(DIRECTORY
  ejemplos  # Ejemplo de código fuente o archivos relacionados.
  launch  # Archivos de lanzamiento (`.launch.py`) para ejecutar el proyecto.
  robots  # Modelos de robot (URDF, Xacro, etc.).
  DESTINATION share/${PROJECT_NAME}/  # Carpeta de destino en `install/share/simulacion/`.
)

# Añade el ejecutable principal del proyecto.
add_executable(robot_move_cpp ejemplos/robot_move_cpp.cpp)  # Ejecutable a partir del código fuente.

# Especifica las dependencias para el ejecutable `robot_move_cpp`.
ament_target_dependencies(robot_move_cpp
  rclcpp  # Nodo ROS 2 en C++.
  geometry_msgs  # Tipos de mensajes para comandos de movimiento.
)

# Instala el ejecutable en la carpeta de destino `install/lib/simulacion`.
install(TARGETS
  robot_move_cpp
  DESTINATION lib/${PROJECT_NAME})  # Carpeta de destino en `install/lib/simulacion`.

# Instala todos los scripts de Python que se encuentran en la carpeta `scripts/`.
file(GLOB PYTHON_SCRIPTS "scripts/*.py")  # Encuentra todos los archivos `.py` en la carpeta `scripts/`.

install(PROGRAMS
  ${PYTHON_SCRIPTS}  # Lista de scripts detectados.
  DESTINATION lib/${PROJECT_NAME}  # Carpeta de destino en `install/lib/simulacion`.
)

# Declara el paquete como un paquete de ROS 2.
ament_package()
