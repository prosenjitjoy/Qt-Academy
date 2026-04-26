import QtQuick
import MyModule

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("QML Modules")

  Backend {
    id: backend
  }

  MyButton {
    id: myButton

    anchors.centerIn: parent
    width: 300
    height: 225
  }

  Connections {
    target: myButton

    function onClicked() {
      backend.onClicked()
    }
  }
}
