# Install script for directory: /Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/src/simulacion

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/install/simulacion")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion/" TYPE DIRECTORY FILES
    "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/src/simulacion/ejemplos"
    "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/src/simulacion/launch"
    "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/src/simulacion/robots"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/simulacion" TYPE EXECUTABLE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/robot_move_cpp")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/simulacion/robot_move_cpp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/simulacion/robot_move_cpp")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rclcpp/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/geometry_msgs/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/libstatistics_collector/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rcl/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rmw_implementation/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/type_description_interfaces/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rcl_interfaces/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/service_msgs/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rcl_yaml_param_parser/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosgraph_msgs/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/statistics_msgs/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rcl_logging_interface/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/std_msgs/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/builtin_interfaces/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_typesupport_fastrtps_c/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_typesupport_introspection_cpp/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_typesupport_introspection_c/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_typesupport_fastrtps_cpp/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rmw/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_dynamic_typesupport/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/fastcdr/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_typesupport_cpp/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_typesupport_c/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rcpputils/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rosidl_runtime_c/lib"
      -delete_rpath "/Users/aliabdelhamid/ros2_jazzy/install/rcutils/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/simulacion/robot_move_cpp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/simulacion/robot_move_cpp")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/CMakeFiles/robot_move_cpp.dir/install-cxx-module-bmi-noconfig.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/simulacion" TYPE PROGRAM FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/src/simulacion/scripts/robot_move.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/simulacion")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/simulacion")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion/environment" TYPE FILE FILES "/Users/aliabdelhamid/ros2_jazzy/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion/environment" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion/environment" TYPE FILE FILES "/Users/aliabdelhamid/ros2_jazzy/install/ament_cmake_core/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion/environment" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_environment_hooks/path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_environment_hooks/local_setup.bash")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_environment_hooks/local_setup.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_environment_hooks/package.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_index/share/ament_index/resource_index/packages/simulacion")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion/cmake" TYPE FILE FILES
    "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_core/simulacionConfig.cmake"
    "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/ament_cmake_core/simulacionConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/simulacion" TYPE FILE FILES "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/src/simulacion/package.xml")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/aliabdelhamid/Programación/Gazebo_projects/Mover_Robot/build/simulacion/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
