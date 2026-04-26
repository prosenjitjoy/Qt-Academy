project(MyModule VERSION 0.1 LANGUAGES CXX)

qt_add_qml_module(libMyModule
    STATIC
    URI MyModule
    QML_FILES
        MyButton.qml
        my_button.js
    RESOURCES
        images/Qt_16-20.svg
    SOURCES
        src/backend.h
        src/backend.cpp
)

target_include_directories(libMyModule
    PRIVATE src
)