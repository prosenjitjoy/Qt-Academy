cmake_minimum_required(VERSION 4.2.3)

project(QObject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.8)

add_executable(QObject
  main.cpp
  myqobject.h myqobject.cpp
  myqobject1.h myqobject1.cpp
  myqobject2.h myqobject2.cpp
  myqobject3.h myqobject3.cpp
)

target_link_libraries(QObject Qt6::Core)

