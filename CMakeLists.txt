cmake_minimum_required(VERSION 3.15)

project(CuddlyDisco)

set(SRCS src/main.cpp)

add_executable(CuddlyDisco ${SRCS})

message("Cmake build type is ${CMAKE_BUILD_TYPE}")
install(TARGETS CuddlyDisco DESTINATION ${CMAKE_INSTALL_PREFIX}/${CMAKE_BUILD_TYPE})