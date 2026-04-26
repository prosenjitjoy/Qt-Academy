cmake_minimum_required(VERSION 4.3)

project(QmlAndCppIntegration_Advanced1 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

set(QT_QML_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/")
set(QML_IMPORT_PATH ${QT_QML_OUTPUT_DIRECTORY})

qt_add_executable(appQmlAndCppIntegration_Advanced1
    main.cpp
)

qt_add_qml_module(appQmlAndCppIntegration_Advanced1
    URI QmlAndCppIntegration_Advanced1
    QML_FILES
        Main.qml
    SOURCES
        ellipse.h
        ellipse.cpp
        interfaceshape.h
        namedobject.h
        namedobject.cpp
        extension.h
)

target_link_libraries(appQmlAndCppIntegration_Advanced1
    PRIVATE Qt6::Quick
)
