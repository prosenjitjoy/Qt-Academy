import QtQuick
import QmlAndCppIntegration_Advanced

Window {
  id: root

  width: 640
  height: 480
  visible: true
  title: qsTr("QML & C++ Integration Advanced")

  property point2D windowPosition

  x: windowPosition.coordinate1
  y: windowPosition.coordinate2

  Text {
    id: mainText

    anchors.centerIn: parent
  }

  Component.onCompleted: function () {
    // place the window in the bottom right corner
    windowPosition.coordinate1 = Screen.width - root.width
    windowPosition.coordinate2 = Screen.height - root.height

    mainText.text = qsTr("Window's initial position: %1").arg(windowPosition.positionInfo())
  }
}
