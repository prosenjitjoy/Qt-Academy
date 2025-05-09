cmake_minimum_required(VERSION 4.0)
project(PositionersAndLayouts VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appPositionersAndLayouts
  main.cpp
)

qt_add_qml_module(appPositionersAndLayouts
  URI PositionersAndLayouts
  VERSION 1.0
  QML_FILES
    Main.qml
  RESOURCES
    assets/image0.jpg
    assets/image1.jpg
    assets/image2.jpg
    assets/image3.jpg
    assets/image4.jpg
    assets/image5.jpg
    assets/image6.jpg
    assets/image7.jpg
    assets/image8.jpg
    assets/image9.jpg
)

target_link_libraries(appPositionersAndLayouts
  PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appPositionersAndLayouts
  BUNDLE DESTINATION .
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
