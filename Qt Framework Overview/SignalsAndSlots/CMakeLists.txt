cmake_minimum_required(VERSION 4.2.3)
project(SignalsAndSlots LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(SignalsAndSlots
    main.cpp
    sender.h sender.cpp
    receiver.h receiver.cpp
    myclass.h myclass.cpp
)

target_link_libraries(SignalsAndSlots
    PRIVATE
        Qt::Core
)
