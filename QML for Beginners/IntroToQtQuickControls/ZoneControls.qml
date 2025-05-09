import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Pane {
  id: root
  property string zoneName
  property int celcius: temperatureDial.value
  property int fahrenheit: (celcius*1.8) + 32
  readonly property color temperatureColor: {
    if (celcius<10) {
      return Qt.color("lightblue")
    } else if (celcius >=10 && celcius<20) {
      return Qt.color("cyan")
    } else if (celcius >=20 && celcius<30) {
      return Qt.color("orange")
    } else {
      return Qt.color("red")
    }
  }

  palette {
    windowText: root.temperatureColor
    dark: root.temperatureColor
  }

  background: Rectangle {
    color: "black"
    opacity: 0.5
  }

  RowLayout {
    anchors.fill: parent
    spacing: 10

    ColumnLayout {
      id: leftColumn
      spacing: 10

      RowLayout {
        spacing: 10

        CheckBox {
          id: zoneEnabledCheckBox
          checked: true
          text: qsTr("Enable %1").arg(root.zoneName)
        }

        Switch {
          id: unitsSwitch
          text: qsTr("°C / °F")
        }
      }

      RowLayout {
        enabled: zoneEnabledCheckBox.checked
        spacing: 10

        Image {
          source: Qt.resolvedUrl("assets/cool.svg")
          Layout.alignment: Qt.AlignBottom
        }

        Dial {
          id: temperatureDial
          from: 0
          to: 40
          value: 21
          stepSize: 1
          snapMode: Dial.SnapAlways
        }

        Image {
          source: Qt.resolvedUrl("assets/heat.svg")
          Layout.alignment: Qt.AlignBottom
        }
      }
    }

    ColumnLayout {
      id: rightColumn
      spacing: 10
      enabled: zoneEnabledCheckBox.checked

      Label {
        text: unitsSwitch.checked ? root.fahrenheit + "°F" : root.celcius + "°C"

        font {
          weight: Font.ExtraLight
          pixelSize: 200
        }

        Layout.fillWidth: true
        horizontalAlignment: Qt.AlignRight
        renderType: Text.CurveRendering
      }

      RowLayout {
        spacing: 10

        Image {
          source: fanSpeedSlider.value > 0 ? Qt.resolvedUrl("assets/fan_outline.svg") : Qt.resolvedUrl("assets/fan_off.svg")
          scale: 0.7
        }

        Slider {
          id: fanSpeedSlider
          from: 0
          to: 100
          Layout.fillWidth: true
        }

        Image {
          source: Qt.resolvedUrl("assets/fan_fill.svg")
          scale: 1
        }
      }
    }
  }
}
