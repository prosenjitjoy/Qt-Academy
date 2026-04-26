cmake_minimum_required(VERSION 4.3)

project(QmlAndCppIntegration_Advanced VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appQmlAndCppIntegration_Advanced
    main.cpp
)

add_subdirectory(ThirdPartyLibrary)

target_include_directories(appQmlAndCppIntegration_Advanced
    PUBLIC "${PROJECT_SOURCE_DIR}/ThirdPartyLibrary"
)

qt_add_qml_module(appQmlAndCppIntegration_Advanced
    URI QmlAndCppIntegration_Advanced
    QML_FILES
        Main.qml
    SOURCES
        foreign.h
)

target_link_libraries(appQmlAndCppIntegration_Advanced
    PRIVATE
        Qt6::Quick
        ThirdPartyLibrary
)