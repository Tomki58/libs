cmake_minimum_required (VERSION 3.0.0)
 
project (LAB1_MMPS)
set(CMAKE_BUILD_TYPE Debug)
set (SOURCES src/source.cpp)
set(EXECUTABLE_OUTPUT_PATH ./${CMAKE_BUILD_TYPE})
add_subdirectory(./EulerMethod)
add_subdirectory(./Runge_KuttaMethod)   

add_executable (${PROJECT_NAME} ${SOURCES})