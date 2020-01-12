# Install script for directory: /home/frank/Documents/ws_raskar/ws_raskar/src/imu_bosch/ciss_ros_wrapper/src/ciss_imu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/frank/Documents/ws_raskar/ws_raskar/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/frank/Documents/ws_raskar/ws_raskar/build/imu_bosch/ciss_ros_wrapper/src/ciss_imu/catkin_generated/installspace/ciss_imu.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ciss_imu/cmake" TYPE FILE FILES
    "/home/frank/Documents/ws_raskar/ws_raskar/build/imu_bosch/ciss_ros_wrapper/src/ciss_imu/catkin_generated/installspace/ciss_imuConfig.cmake"
    "/home/frank/Documents/ws_raskar/ws_raskar/build/imu_bosch/ciss_ros_wrapper/src/ciss_imu/catkin_generated/installspace/ciss_imuConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ciss_imu" TYPE FILE FILES "/home/frank/Documents/ws_raskar/ws_raskar/src/imu_bosch/ciss_ros_wrapper/src/ciss_imu/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ciss_imu" TYPE DIRECTORY FILES
    "/home/frank/Documents/ws_raskar/ws_raskar/src/imu_bosch/ciss_ros_wrapper/src/ciss_imu/config"
    "/home/frank/Documents/ws_raskar/ws_raskar/src/imu_bosch/ciss_ros_wrapper/src/ciss_imu/meshes"
    "/home/frank/Documents/ws_raskar/ws_raskar/src/imu_bosch/ciss_ros_wrapper/src/ciss_imu/launch"
    "/home/frank/Documents/ws_raskar/ws_raskar/src/imu_bosch/ciss_ros_wrapper/src/ciss_imu/rviz"
    "/home/frank/Documents/ws_raskar/ws_raskar/src/imu_bosch/ciss_ros_wrapper/src/ciss_imu/urdf"
    )
endif()
