cmake_minimum_required(VERSION 4.3)

project(QtQuickControls VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appQtQuickControls
  main.cpp
)

qt_add_qml_module(appQtQuickControls
  URI QtQuickControls
  QML_FILES
    Main.qml
    InputControls.qml
    Feedback.qml
    LogosSwipeView.qml
  SOURCES
    colormodel.h colormodel.cpp
  RESOURCES
    QtLogos/Qt_14-16.svg
    QtLogos/Qt_16-20.svg
    QtLogos/Qt_20-28.png
    QtLogos/Qt_20-present.svg
    QtLogos/Qt_28-14.svg
)

target_link_libraries(appQtQuickControls
    PRIVATE Qt6::Quick
)
