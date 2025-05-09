import QtQuick

Window {
  id: root
  minimumWidth: 260
  minimumHeight: 380
  maximumWidth: root.minimumWidth
  maximumHeight: root.minimumHeight
  visible: true
  title: qsTr("Intro To Qt Quick")

  FontLoader {
    id: russoFontLoader
    source: "fonts/RussoOne-Regular.ttf"
  }

  FontLoader {
    id: prismaFontLoader
    source: "fonts/Prisma.ttf"
  }

  Image {
    id: padalBackground
    source: "assets/Guitar-Pedal-Background.png"
  }

  Item {
    anchors.fill: parent
    anchors.leftMargin: 15
    anchors.rightMargin: 15
    anchors.topMargin: 17
    anchors.bottomMargin: 17

    component ScrewImage: Image {
      source: "assets/Screw.png"
    }

    ScrewImage {
      anchors.left: parent.left
      anchors.top: parent.top
    }

    ScrewImage {
      anchors.right: parent.right
      anchors.top: parent.top
    }

    ScrewImage {
      anchors.left: parent.left
      anchors.bottom: parent.bottom
    }

    ScrewImage {
      anchors.right: parent.right
      anchors.bottom: parent.bottom
    }

    component DeviceText: Text {
      color: "#191919"
      font.family: russoFontLoader.font.family
      font.weight: russoFontLoader.font.weight
      font.pixelSize: 9
    }

    component InfoText: Column {
      id: infoLabel
      spacing: 5

      property alias text: label.text
      property alias font: label.font
      property int lineWidth: 200
      property int lineHeight: 2
      property color lineColor: "#191919"

      Rectangle {
        width: infoLabel.lineWidth
        height: infoLabel.lineHeight
        color: infoLabel.lineColor
      }

      DeviceText {
        id: label
        anchors.horizontalCenter: parent.horizontalCenter
      }

      Rectangle {
        width: infoLabel.lineWidth
        height: infoLabel.lineHeight
        color: infoLabel.lineColor
      }
    }

    InfoText {
      id: brand
      text: qsTr("TIME BLENDER")
      spacing: 10
      font.family: prismaFontLoader.font.family
      font.pixelSize: 18
      anchors.top: parent.verticalCenter
      anchors.topMargin: 16
      anchors.horizontalCenter: parent.horizontalCenter
    }

    InfoText {
      text: qsTr("IN")
      lineWidth: 30
      lineHeight: 2
      font.family: russoFontLoader.font.family
      font.weight: russoFontLoader.font.weight
      font.pixelSize: 9
      anchors.top: parent.top
      anchors.right: parent.right
      anchors.topMargin: 60
    }

    InfoText {
      text: qsTr("OUT")
      lineWidth: 30
      lineHeight: 2
      font.family: russoFontLoader.font.family
      font.weight: russoFontLoader.font.weight
      font.pixelSize: 9
      anchors.top: parent.top
      anchors.left: parent.left
      anchors.topMargin: 60
    }
  }

  component SwitchImage: Image {
    required property string sourceBaseName
    property bool checked

    source: `assets/${sourceBaseName}${checked ? "-Checked" : ""}.png`
  }

  SwitchImage {
    x: parent.width * 0.33 - width / 2
    y: 15
    sourceBaseName: "LED"
    checked: footPedal.checked

    DeviceText {
      text: qsTr("CHECK")
      anchors.top: parent.bottom
      anchors.topMargin: 4
      anchors.horizontalCenter: parent.horizontalCenter
    }
  }

  component DeviceSwitch: SwitchImage {
    property alias tapMargin: tapHandler.margin

    TapHandler {
      id: tapHandler
      onTapped: parent.checked = !parent.checked
    }
  }

  DeviceSwitch {
    id: footPedal
    sourceBaseName: "Button-Pedal"
    anchors.bottom: parent.bottom
    anchors.bottomMargin: 17
    anchors.horizontalCenter: parent.horizontalCenter
  }

  DeviceSwitch {
    x: parent.width * 0.66 - width / 2
    y: 15
    sourceBaseName: "Switch"
    tapMargin: 15

    DeviceText {
      text: qsTr("MODE")
      anchors.top: parent.bottom
      anchors.topMargin: 4
      anchors.horizontalCenter: parent.horizontalCenter
    }
  }

  component DeviceDial: Image {
    id: dial
    source: "assets/Knob-Markings.png"
    property alias text: dialLabel.text
    property alias font: dialLabel.font

    property int value
    property int angle

    readonly property int minimumValue: 0
    readonly property int maximumValue: 100
    readonly property int range: dial.maximumValue - dial.minimumValue

    Image {
      source: "assets/Knob-Dial.png"
      anchors.centerIn: parent
      rotation: dial.angle
    }

    DeviceText {
      id: dialLabel
      anchors.top: dial.bottom
      anchors.horizontalCenter: dial.horizontalCenter
    }

    DeviceText {
      text: qsTr("MIN")
      anchors.left: dial.left
      anchors.bottom: dial.bottom
      font.pixelSize: 6
    }

    DeviceText {
      text: qsTr("MAX")
      anchors.right: dial.right
      anchors.bottom: dial.bottom
      font.pixelSize: 6
    }

    DragHandler {
      target: null
      onCentroidChanged: updateValueAndRotation()

      function updateValueAndRotation() {
        if (centroid.pressedButtons !== Qt.LeftButton) {
          return
        }

        const startAngle = -140
        const endAngle = 140

        const yy = dial.height / 2.0 - centroid.position.y
        const xx = centroid.position.x - dial.width / 2.0

        const radianAngle = Math.atan2(yy, xx)
        let newAngle = (-radianAngle / Math.PI * 180) + 90

        newAngle = ((newAngle - dial.angle + 180) % 360) + dial.angle - 180

        dial.angle = Math.max(startAngle, Math.min(newAngle, endAngle))
        dial.value = (dial.angle - startAngle) / (endAngle - startAngle) * dial.range

        console.log("angle: ", dial.angle, "value: ", dial.value)
      }
    }
  }

  DeviceDial {
    anchors.left: footPedal.left
    y: 147 - height / 2
    text: qsTr("LEVEL")
  }

  DeviceDial {
    anchors.horizontalCenter: parent.horizontalCenter
    y: 67 - height / 2
    text: qsTr("TIME")
  }

  DeviceDial {
    anchors.right: footPedal.right
    y: 147 - height / 2
    text: qsTr("FEEDBACK")
  }
}
