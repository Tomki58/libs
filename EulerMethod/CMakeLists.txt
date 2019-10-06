cmake_minimum_required(VERSION 3.0.0)

project(euler_lib CXX)
set(CMAKE_BUILD_TYPE Debug)
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build/${CMAKE_BUILD_TYPE})
set(SOURCES  src/func.cpp)
add_library(euler SHARED ${SOURCES})