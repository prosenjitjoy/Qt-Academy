cmake_minimum_required(VERSION 4.3)

project(QmlModules VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

set(QT_QML_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/")
set(QML_IMPORT_PATH ${QT_QML_OUTPUT_DIRECTORY})

qt_add_executable(appQmlModules
    main.cpp
)

add_subdirectory(modules/MyModule)

qt_add_qml_module(appQmlModules
    URI QmlModules
    QML_FILES
        Main.qml
)

target_link_libraries(appQmlModules
    PRIVATE
        Qt6::Quick
        libMyModuleplugin
)
