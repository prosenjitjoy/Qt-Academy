import QtQuick
import QtQuick.Controls.Basic
import QmlAndCppIntegration_Intermediate

Window {
  id: root

  width: 640
  height: 480
  visible: true
  title: qsTr("QML & C++ Integration Intermediate")

  property int loading: Globals.status
  property string statusMessage: Globals.status ? "Loading" : "Ready"
  required property BingoModel bingoModel

  BingoResults {
    id: bingoResults
  }

  Connections {
    target: Globals
    function onNumChanged() {
      if (!dialog.visible) {
        var modelCount = root.bingoModel.rowCount()

        for (var i = 0; i < modelCount; i++) {
          var index = root.bingoModel.index(i, 0)

          if ((root.bingoModel.data(index, 1) == Globals.num) && (root.bingoModel.data(index, 2) == false)) {
            root.bingoModel.setListElem(i, {
              "number": root.bingoModel.data(index, 1),
              "found": true
            })

            bingoResults.matchCounter++
            console.log("match!: " + Globals.num)
          }
        }

        bingoResults.calculate(bingoResults.matchCounter, bingoResults.turnsRemaining, root.bingoModel.rowCount())

        if (bingoResults.message != "") {
          dialog.open()
        }

        bingoResults.turnsRemaining--
      }
    }
  }

  Column {
    anchors.centerIn: parent
    spacing: 10

    Text {
      anchors.horizontalCenter: parent.horizontalCenter
      font.pointSize: 14
      text: qsTr("Generated number: %1").arg(Globals.num)
    }

    Button {
      anchors.horizontalCenter: parent.horizontalCenter
      text: qsTr("Click to generate a number")
      enabled: !root.loading

      onClicked: function () {
        Globals.status = Globals.Loading
        timer.restart()
      }
    }

    Timer {
      id: timer

      running: true
      repeat: true

      onTriggered: function () {
        if (root.loading == Globals.Loading) {
          Globals.generateNumber()
          Globals.status = Globals.Ready
        }
      }
    }

    Text {
      anchors.horizontalCenter: parent.horizontalCenter
      font.pointSize: 10
      text: qsTr("Generator status: %1").arg(root.statusMessage)
    }

    BusyIndicator {
      width: 50
      height: 50
      anchors.horizontalCenter: parent.horizontalCenter
      running: root.loading
    }

    Row {
      anchors.horizontalCenter: parent.horizontalCenter
      spacing: 2

      Repeater {
        model: root.bingoModel

        delegate: Rectangle {
          id: viewDelegate

          width: 40
          height: 40

          required property int index
          required property int number
          required property bool found

          color: viewDelegate.found ? "lightgreen" : "lightcoral"

          Text {
            anchors.centerIn: parent
            font.pointSize: 14
            text: viewDelegate.number
          }
        }
      }
    }

    Text {
      anchors.horizontalCenter: parent.horizontalCenter
      font.pointSize: 12
      text: qsTr("Turns remaining: %1").arg(bingoResults.turnsRemaining)
    }

    Dialog {
      id: dialog

      implicitWidth: 200
      implicitHeight: 200
      anchors.centerIn: parent
      modal: true
      title: "Game over"

      Column {
        anchors.centerIn: parent
        spacing: 15

        Text {
          id: dialogText

          anchors.horizontalCenter: parent.horizontalCenter
          font.pointSize: 16
        }

        Button {
          id: resetButton

          width: 70
          height: 40
          anchors.horizontalCenter: parent.horizontalCenter
          text: "Reset"

          onClicked: function () {
            Globals.num = 0
            dialog.visible = false
            bingoResults.turnsRemaining = 10
            bingoResults.matchCounter = 0
            root.bingoModel.resetModel()
          }
        }
      }

      onOpened: function () {
        dialogText.text = bingoResults.message
      }
    }
  }
}
