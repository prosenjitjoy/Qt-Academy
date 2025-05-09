cmake_minimum_required(VERSION 4.0)
project(IntroToQtQuickControls VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2)
qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appIntroToQtQuickControls
  main.cpp
)

qt_add_qml_module(appIntroToQtQuickControls
  URI IntroToQtQuickControls
  VERSION 1.0
  QML_FILES
    Main.qml
    QML_FILES ClimateControls.qml
    QML_FILES ZoneControls.qml
  RESOURCES
    assets/BrushedMetal.jpg
    assets/cool.svg
    assets/fan_fill.svg
    assets/fan_off.svg
    assets/fan_outline.svg
    assets/heat.svg
)

target_link_libraries(appIntroToQtQuickControls
  PRIVATE Qt6::Quick Qt6::QuickControls2
)

include(GNUInstallDirs)
install(TARGETS appIntroToQtQuickControls
  BUNDLE DESTINATION .
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
