cmake_minimum_required(VERSION 4.0)
project(QMLDebugging_StartingProject VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 26)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appQMLDebugging
    main.cpp
)

qt_add_qml_module(appQMLDebugging
    URI QMLDebugging
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        assets/Button-Pedal-Checked.png
        assets/Button-Pedal-Checked@2x.png
        assets/Button-Pedal.png
        assets/Button-Pedal@2x.png
        assets/Guitar-Pedal-Background.png
        assets/Guitar-Pedal-Background@2x.png
        assets/Knob-Dial.png
        assets/Knob-Dial@2x.png
        assets/Knob-Markings.png
        assets/Knob-Markings@2x.png
        assets/LED-Checked.png
        assets/LED-Checked@2x.png
        assets/LED.png
        assets/LED@2x.png
        assets/Screw.png
        assets/Screw@2x.png
        assets/Switch-Checked.png
        assets/Switch-Checked@2x.png
        assets/Switch.png
        assets/Switch@2x.png
        fonts/Prisma.ttf
        fonts/RussoOne-Regular.ttf
)

target_link_libraries(appQMLDebugging
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appQMLDebugging
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
