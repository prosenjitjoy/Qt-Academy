cmake_minimum_required(VERSION 4.3)

project(Threading2 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appThreading2
    main.cpp
)

qt_add_qml_module(appThreading2
    URI Threading2
    QML_FILES
        Main.qml
)

target_link_libraries(appThreading2
    PRIVATE Qt6::Quick
)