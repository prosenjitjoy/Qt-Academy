cmake_minimum_required(VERSION 4.0)
project(IntroToQML VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appIntroToQML
    main.cpp
)

qt_add_qml_module(appIntroToQML
    URI IntroToQML
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES resources.qrc
    QML_FILES PassByValue.qml
    QML_FILES PassByReference.qml
    QML_FILES square.mjs
    QML_FILES script.mjs
)

target_link_libraries(appIntroToQML
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appIntroToQML
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
