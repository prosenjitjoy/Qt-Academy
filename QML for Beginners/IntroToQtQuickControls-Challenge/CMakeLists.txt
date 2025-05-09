cmake_minimum_required(VERSION 4.0)
project(IntroToQtQuickControls_StartingProject VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appIntroToQtQuickControls
    main.cpp
)

qt_add_qml_module(appIntroToQtQuickControls
    URI IntroToQtQuickControls
    VERSION 1.0
    QML_FILES
        Main.qml
        MenuLabel.qml
        MenuSection.qml
    RESOURCES
        fonts/Kalam-Regular.ttf
        images/dark/cart_add.svg
        images/dark/cart_remove.svg
        images/dark/checkout.svg
        images/dark/mild.svg
        images/dark/very_hot.svg
        images/light/cart_add.svg
        images/light/cart_remove.svg
        images/light/checkout.svg
        images/light/mild.svg
        images/light/very_hot.svg
        images/curry.jpg
)

target_link_libraries(appIntroToQtQuickControls
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appIntroToQtQuickControls
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
