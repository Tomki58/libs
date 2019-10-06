cmake_minimum_required(VERSION 3.0.0)

project(runge_kutta)
set(CMAKE_BUILD_TYPE Debug)
set(SOURCES src/func.cpp)
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build/${CMAKE_BUILD_TYPE})

add_library(${PROJECT_NAME} SHARED ${SOURCES})