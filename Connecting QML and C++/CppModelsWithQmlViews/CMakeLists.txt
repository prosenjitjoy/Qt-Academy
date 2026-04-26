cmake_minimum_required(VERSION 4.3)

project(CppModelsWithQmlViews VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appCppModelsWithQmlViews
    main.cpp
)

qt_add_qml_module(appCppModelsWithQmlViews
    URI CppModelsWithQmlViews
    QML_FILES
        Main.qml
    SOURCES
        contactslistmodel.h
        contactslistmodel.cpp
)

target_link_libraries(appCppModelsWithQmlViews
    PRIVATE Qt6::Quick
)