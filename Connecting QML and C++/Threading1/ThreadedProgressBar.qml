import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Threading1

Item {
  id: root
  width: 600
  height: 50

  DataProcessor {
    id: dataProcessor

    itemName: root.objectName

    onProgressUpdated: function (current, total) {
      progressBar.value = current / total
    }

    onWorkFinished: function () {
      startBtn.enabled = true
      statusMessage.visible = true
      statusMessage.color = "green"
      statusMessage.text = qsTr("Finished")
    }
  }

  RowLayout {
    anchors.centerIn: parent
    width: parent.width
    spacing: 10

    Button {
      id: startBtn

      Layout.leftMargin: 10
      text: qsTr("Start processing")

      onClicked: function () {
        dataProcessor.startProcessing()
        enabled = false
        statusMessage.visible = false
        progressBar.value = 0.0
      }
    }

    ProgressBar {
      id: progressBar

      from: 0.0
      to: 1.0
      value: 0.0
      Layout.preferredWidth: 200
    }

    Text {
      id: currentProgress

      text: qsTr("%1 %").arg(Math.round(progressBar.value * 100))
      visible: !statusMessage.visible
      Layout.rightMargin: 10
      Layout.preferredWidth: 100
    }

    Text {
      id: statusMessage

      visible: false
      Layout.rightMargin: 10
      Layout.preferredWidth: 100
    }
  }
}
