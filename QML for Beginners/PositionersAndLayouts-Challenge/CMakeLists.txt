cmake_minimum_required(VERSION 4.0)
project(PositionersAndLayouts_StartingProject VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appPositionersAndLayouts
    main.cpp
)

set_source_files_properties(
    Backend.qml
    PROPERTIES QT_QML_SINGLETON_TYPE TRUE
)

qt_add_qml_module(appPositionersAndLayouts
    URI PositionersAndLayouts
    VERSION 1.0
    QML_FILES
        Main.qml
        Backend.qml
        GradientBackground.qml
        ChatList.qml
        ChatHeader.qml
        ChatFooter.qml
        ChatFlickable.qml
        ChatBubble.qml
    RESOURCES
        send.svg
)

target_link_libraries(appPositionersAndLayouts PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS appPositionersAndLayouts
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
