cmake_minimum_required(VERSION 4.0)
project(ModelViewDelegate_StartingProject VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appModelViewDelegate
    main.cpp
)

qt_add_qml_module(appModelViewDelegate
    URI ModelViewDelegate
    VERSION 1.0
    QML_FILES
        Main.qml
        FrequencyBandModel.qml
        QML_FILES LED.qml
        QML_FILES LEDBar.qml
)

target_link_libraries(appModelViewDelegate
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appModelViewDelegate
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
