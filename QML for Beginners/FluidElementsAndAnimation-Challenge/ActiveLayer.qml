import QtQuick

Item {
    id: activeLayer
    required property Item inactiveLayer

    QtObject {
        id: object
        property AppWindow activeAppWindow: null
    }

    function makeActive(appWindow: AppWindow) {
        if (object.activeAppWindow && object.activeAppWindow != appWindow) {
            object.activeAppWindow.parent = inactiveLayer
        }

        appWindow.parent = activeLayer
        object.activeAppWindow = appWindow
        appWindow.focus = true
    }
}
