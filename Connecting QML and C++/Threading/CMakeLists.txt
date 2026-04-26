cmake_minimum_required(VERSION 4.3)

project(Threading VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.10)

add_executable(Threading
  main.cpp
  workerthread.h workerthread.cpp
)

target_link_libraries(Threading
  PRIVATE Qt6::Core
)
