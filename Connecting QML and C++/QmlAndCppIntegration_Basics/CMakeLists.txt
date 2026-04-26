cmake_minimum_required(VERSION 4.3)

project(QmlAndCppIntegration_Basics VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appQmlAndCppIntegration_Basics
    main.cpp
)

qt_add_qml_module(appQmlAndCppIntegration_Basics
    URI QmlAndCppIntegration_Basics
    QML_FILES
        Main.qml
    SOURCES
        ellipse.h ellipse.cpp
)

target_link_libraries(appQmlAndCppIntegration_Basics
    PRIVATE Qt6::Quick
)
