# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_simulacion_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED simulacion_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(simulacion_FOUND FALSE)
  elseif(NOT simulacion_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(simulacion_FOUND FALSE)
  endif()
  return()
endif()
set(_simulacion_CONFIG_INCLUDED TRUE)

# output package information
if(NOT simulacion_FIND_QUIETLY)
  message(STATUS "Found simulacion: 0.1.0 (${simulacion_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'simulacion' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT simulacion_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(simulacion_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${simulacion_DIR}/${_extra}")
endforeach()
