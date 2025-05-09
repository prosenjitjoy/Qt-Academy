cmake_minimum_required(VERSION 4.0)
project(ModelViewDelegate VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appModelViewDelegate
    main.cpp
)

set_source_files_properties(
    Requester.qml
    PROPERTIES QT_QML_SINGLETON_TYPE true
)

qt_add_qml_module(appModelViewDelegate
    URI ModelViewDelegate
    VERSION 1.0
    QML_FILES
        Main.qml
        LiveLocationModel.qml
        LiveWeatherModel.qml
        Requester.qml
        OpenMeteo.qml
    RESOURCES
        assets/icons/icon0.svg
        assets/icons/icon1.svg
        assets/icons/icon2.svg
        assets/icons/icon3.svg
        assets/icons/icon45.svg
        assets/icons/icon48.svg
        assets/icons/icon51.svg
        assets/icons/icon53.svg
        assets/icons/icon55.svg
        assets/icons/icon56.svg
        assets/icons/icon57.svg
        assets/icons/icon61.svg
        assets/icons/icon63.svg
        assets/icons/icon65.svg
        assets/icons/icon66.svg
        assets/icons/icon67.svg
        assets/icons/icon70.svg
        assets/icons/icon73.svg
        assets/icons/icon75.svg
        assets/icons/icon77.svg
        assets/icons/icon80.svg
        assets/icons/icon81.svg
        assets/icons/icon82.svg
        assets/icons/icon85.svg
        assets/icons/icon86.svg
        assets/icons/icon95.svg
        assets/icons/icon96.svg
        assets/icons/icon99.svg
        assets/images/image0.jpg
        assets/images/image1.jpg
        assets/images/image2.jpg
        assets/images/image3.jpg
        assets/images/image45.jpg
        assets/images/image48.jpg
        assets/images/image51.jpg
        assets/images/image53.jpg
        assets/images/image55.jpg
        assets/images/image56.jpg
        assets/images/image57.jpg
        assets/images/image61.jpg
        assets/images/image63.jpg
        assets/images/image65.jpg
        assets/images/image66.jpg
        assets/images/image67.jpg
        assets/images/image71.jpg
        assets/images/image73.jpg
        assets/images/image75.jpg
        assets/images/image77.jpg
        assets/images/image80.jpg
        assets/images/image81.jpg
        assets/images/image82.jpg
        assets/images/image85.jpg
        assets/images/image86.jpg
        assets/images/image95.jpg
        assets/images/image96.jpg
        assets/images/image99.jpg
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
