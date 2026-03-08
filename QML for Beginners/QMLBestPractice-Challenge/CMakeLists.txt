cmake_minimum_required(VERSION 4.0)
project(QMLBestPractice VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appQMLBestPractice
    main.cpp
)

set_source_files_properties(
    Theme.qml
    PROPERTIES
        QT_QML_SINGLETON_TYPE TRUE
)

qt_add_qml_module(appQMLBestPractice
    URI QMLBestPractice
    VERSION 1.0
    DEPENDENCIES
        QtQuick
    QML_FILES
        Book.qml
        BookPage.qml
        DarkModeSwitch.qml
        FontSizeSlider.qml
        GreatNightIn.qml
        Main.qml
        SettingsButton.qml
        Theme.qml
    SOURCES
        Chapter.h
        Chapter.cpp
    RESOURCES
        images/lightModeWhite.svg
        images/lightModeBlack.svg
        images/darkModeBlack.svg
        images/darkModeWhite.svg
        images/settingsBlack.svg
        images/settingsWhite.svg
)

target_link_libraries(appQMLBestPractice
    PRIVATE Qt6::Quick
)
