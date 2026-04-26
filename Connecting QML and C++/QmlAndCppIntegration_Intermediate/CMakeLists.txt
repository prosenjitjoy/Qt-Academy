cmake_minimum_required(VERSION 4.3)

project(QmlAndCppIntegration_Intermediate VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appQmlAndCppIntegration_Intermediate
    main.cpp
)

qt_add_qml_module(appQmlAndCppIntegration_Intermediate
    URI QmlAndCppIntegration_Intermediate
    QML_FILES
        Main.qml
    SOURCES
        globals.h
        globals.cpp
        bingomodel.h
        bingomodel.cpp
        counters.h
        counters.cpp
        bingoresults.h
        bingoresults.cpp
)

target_link_libraries(appQmlAndCppIntegration_Intermediate
    PRIVATE Qt6::Quick
)