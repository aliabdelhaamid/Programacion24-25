#include <chrono>                       // Biblioteca para trabajar con duraciones y tiempos.
#include <memory>                       // Biblioteca para punteros inteligentes como std::shared_ptr.
#include "rclcpp/rclcpp.hpp"            // Cabecera principal de ROS 2 para crear nodos.
#include "geometry_msgs/msg/twist.hpp" // Mensaje de ROS 2 usado para comandos de movimiento (lineal y angular).

// Usamos el espacio de nombres std::chrono_literals para facilitar la definición de duraciones.
using namespace std::chrono_literals;

// Definimos una clase llamada `RobotMove` que hereda de `rclcpp::Node`.
// Esto significa que `RobotMove` es un nodo de ROS 2.
class RobotMove : public rclcpp::Node
{
public:
  // Constructor de la clase.
  // El constructor inicializa el nodo con un nombre "robot_move" y configura el publicador y el temporizador.
  RobotMove()
  : Node("robot_move") // Se establece el nombre del nodo.
  {
    // Creamos un publicador que publicará mensajes del tipo `geometry_msgs::msg::Twist`
    // en el tópico "/cmd_vel" con un tamaño de cola de 10.
    publisher_ = this->create_publisher<geometry_msgs::msg::Twist>("/cmd_vel", 10);

    // Configuramos un temporizador que ejecutará la función `timer_callback` cada 500ms.
    timer_ = this->create_wall_timer(500ms, std::bind(&RobotMove::timer_callback, this));
  }

private:
  // Función que se ejecuta periódicamente gracias al temporizador.
  void timer_callback()
  {
    // Creamos un mensaje del tipo `geometry_msgs::msg::Twist`.
    auto message = geometry_msgs::msg::Twist();

    // Establecemos las velocidades lineal y angular en el mensaje.
    message.linear.x = 0.5;  // Velocidad lineal en el eje X (hacia adelante).
    message.angular.z = 0.1; // Velocidad angular en el eje Z (rotación).

    // Publicamos el mensaje en el tópico "/cmd_vel".
    publisher_->publish(message);
  }

  // Declaramos un puntero al publicador. Este publicará mensajes de tipo `geometry_msgs::msg::Twist`.
  rclcpp::Publisher<geometry_msgs::msg::Twist>::SharedPtr publisher_;

  // Declaramos un puntero al temporizador. Este se utiliza para llamar a `timer_callback` periódicamente.
  rclcpp::TimerBase::SharedPtr timer_;
};

// Función principal del programa.
int main(int argc, char * argv[])
{
  // Inicializamos ROS 2. Esto configura el sistema y prepara los nodos para ejecutarse.
  rclcpp::init(argc, argv);

  // Creamos una instancia del nodo `RobotMove` utilizando un puntero compartido.
  auto node = std::make_shared<RobotMove>();

  // Ejecutamos el nodo. Esto inicia el bucle de eventos y mantiene el nodo activo.
  rclcpp::spin(node);

  // Finalizamos y limpiamos los recursos de ROS 2.
  rclcpp::shutdown();

  // Finalizamos el programa.
  return 0;
}

