import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import QmlAndCppIntegration_Advanced1

ApplicationWindow {
  width: 640
  height: 480
  visible: true
  title: qsTr("QML & C++ Integration Advanced")

  header: Column {
    width: parent.width

    Button {
      width: parent.width
      text: qsTr("Select ellipse's color")
      onClicked: function () {
        colorDialog.open()
      }
    }

    Label {
      width: parent.width
      text: qsTr("Resize ellipse's border")
    }

    Slider {
      id: slider

      width: parent.width
      value: 25
      from: 0
      to: Math.min(ellipse.height, ellipse.width) / 2
    }
  }

  footer: Button {
    text: qsTr("Call Q_INVOKABLE method to reset ellipse's properties")
    onClicked: function () {
      slider.value = 25
      ellipse.setProperties(slider.value, "blue")
    }
  }

  // Ellipse {
  //   id: ellipse

  //   anchors.centerIn: parent
  //   width: 200
  //   height: 200
  //   color: "blue"
  //   border: slider.value

  //   onColorChanged: function () {
  //     shapeInfo()
  //   }
  // }

  EllipseExtended {
    id: ellipse

    anchors.centerIn: parent
    width: 200
    height: 200
    color: "green"
    border: slider.value
    name: "My ellipse"

    onColorChanged: function () {
      shapeInfo()
      console.log(name)
    }
  }

  ColorDialog {
    id: colorDialog

    selectedColor: ellipse.color
    onAccepted: function () {
      ellipse.color = selectedColor
    }
  }
}
