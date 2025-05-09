cmake_minimum_required(VERSION 4.0)
project(FluidAnimations_StartingProject VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.9)

qt_add_executable(appFluidAnimations
    main.cpp
)

qt_add_qml_module(appFluidAnimations
    URI FluidAnimations
    VERSION 1.0
    QML_FILES
        Main.qml
        AppModel.qml
        ActiveLayer.qml
        AppWindow.qml
        AppLauncher.qml
        AppMenuItem.qml
    RESOURCES
        images/home.svg
        images/play.svg
        images/rss.svg
        images/settings.svg
        images/table.svg
        images/terminal.svg
        images/wallpaper.jpg
)

target_link_libraries(appFluidAnimations
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appFluidAnimations
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
