import QtQuick

Window {
  width: 640
  height: 160
  visible: true
  title: qsTr("Progress Bar Threading")

  Column {
    anchors.fill: parent
    spacing: 5

    ThreadedProgressBar {
      id: progressBar1

      objectName: qsTr("First progress bar")
    }

    ThreadedProgressBar {
      id: progressBar2

      objectName: qsTr("Second progress bar")
    }

    ThreadedProgressBar {
      id: progressBar3

      objectName: qsTr("Third progress bar")
    }
  }
}
