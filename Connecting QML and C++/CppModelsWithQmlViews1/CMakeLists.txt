cmake_minimum_required(VERSION 4.3)

project(CppModelsWithQmlViews1 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appCppModelsWithQmlViews1
    main.cpp
)

qt_add_qml_module(appCppModelsWithQmlViews1
    URI CppModelsWithQmlViews1
    VERSION 1.0
    QML_FILES
        Main.qml
        ContactsListView.qml
    SOURCES
        contactslistmodel.h
        contactslistmodel.cpp
        contactsfilterproxymodel.h
        contactsfilterproxymodel.cpp
        contactssortproxymodel.h
        contactssortproxymodel.cpp
)

target_link_libraries(appCppModelsWithQmlViews1
    PRIVATE Qt6::Quick
)