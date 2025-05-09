cmake_minimum_required(VERSION 4.0)
project(FluidElementsAndAnimation VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appFluidElementsAndAnimation
    main.cpp
)

qt_add_qml_module(appFluidElementsAndAnimation
    URI FluidElementsAndAnimation
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        assets/appgrid.png
        assets/football.png
        assets/notification.png
        assets/send.png
        assets/heart.svg
)

target_link_libraries(appFluidElementsAndAnimation
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appFluidElementsAndAnimation
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
