import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

ApplicationWindow {
  id: window
  width: 1024
  height: 800
  visible: true
  title: qsTr("Intro to Qt Quick Controls")

  font.pixelSize: 24

  background: Image {
    source: Qt.resolvedUrl("assets/BrushedMetal.jpg")
    fillMode: Image.PreserveAspectCrop
  }

  // Button {
  //   text: "Click Here"
  //   anchors.centerIn: parent
  //   onClicked: window.close()
  // }

  // Rectangle {
  //   color: "blue"
  //   width: 200
  //   height: 200

  //   Rectangle {
  //     color: "green"
  //     width: 25
  //     height: 25
  //     visible: false
  //   }

  //   Rectangle {
  //     color: "red"
  //     x: 25
  //     y: 25
  //     width: 50
  //     height: 50
  //     rotation: 45
  //     scale: 1.5
  //     // transformOrigin: Item.TopLeft
  //   }
  // }

  // Rectangle {
  //   width: 200
  //   height: 200
  //   color: "red"
  //   MouseArea {
  //     anchors.fill: parent
  //     onClicked: console.log("Red Clicked")
  //   }
  // }

  // Rectangle {
  //   x: 200
  //   width: 200
  //   height: 200
  //   color: "blue"
  //   enabled: false
  //   MouseArea {
  //     anchors.fill: parent
  //     onClicked: console.log("Blue Clicked")
  //   }
  // }

  // Button {
  //   contentItem: Label {
  //     text: "Click Here"
  //     font.pixelSize: 24
  //     font.bold: true
  //     verticalAlignment: Text.AlignVCenter
  //   }
  //   background: Rectangle {
  //     color: parent.down ? "#d1d5db" : "#29c878"
  //   }
  //   padding: 10
  // }

  // menuBar: MenuBar {
  // }

  // header: ToolBar {
  // }

  // footer: TabBar {
  // }

  // Pane {
  //   ColumnLayout {
  //     anchors.fill: parent
  //     CheckBox {
  //       text: qsTr("Weather Notifications")
  //     }
  //     CheckBox {
  //       text: qsTr("Climate Schedule")
  //     }
  //     CheckBox {
  //       text: qsTr("Eco Mode")
  //     }
  //   }
  // }

  // header: Label {
  //   text: (view.currentItem as Page).title
  //   horizontalAlignment: Text.AlignHCenter
  // }

  // SwipeView {
  //   id: view
  //   anchors.fill: parent

  //   Page {
  //     title: qsTr("Home")
  //     background: Rectangle {
  //       color: "red"
  //     }
  //   }

  //   Page {
  //     title: qsTr("Discover")
  //     background: Rectangle {
  //       color: "green"
  //     }
  //   }

  //   Page {
  //     title: qsTr("Activity")
  //     background: Rectangle {
  //       color: "yellow"
  //     }
  //   }
  // }

  ClimateControls {
    anchors.fill: parent
  }

  // Label {
  //   text: "Home Controls"
  //   padding: 10
  //   color: "#00414a"

  //   font {
  //     family: "Arial"
  //     pointSize: 24
  //     bold: true
  //   }

  //   background: Rectangle {
  //     color: "lightgray"
  //   }
  // }

  // CheckBox {
  //   id: cb1
  //   text: "Checked"
  //   checked: false
  // }

  // CheckBox {
  //   anchors.top: cb1.bottom
  //   text: "Partially Checked"
  //   tristate: true
  //   checkState: Qt.PartiallyChecked
  // }

  // Switch {
  //   id: switch1
  //   text: "Bedroom Lights"
  //   checked: true
  // }

  // Switch {
  //   anchors.top: switch1.bottom
  //   text: "Kitchen Lights"
  // }

  // ColumnLayout {
  //   palette {
  //     text: "darkslategray"
  //     button: "slategray"
  //   }

  //   Label {
  //     text: "This text will be dark slate gray"
  //   }

  //   Button {
  //     text: "This button will be slate gray"
  //   }
  // }
}
