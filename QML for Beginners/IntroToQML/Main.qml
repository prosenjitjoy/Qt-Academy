import QtQuick
import "script.mjs" as MyScript

Window {
    id: root
    width: 1280
    height: 720
    visible: true
    title: qsTr("Introduction to QML")

    // Rectangle {
    //     width: root.width / 2
    //     height: root.height / 2
    //     color: "#00414a"
    // }

    // onWidthChanged: function (value) {
    //     console.log("width changed to: " + value)
    // }

    // Image {
    //     id: image
    //     source: "qrc:/Images/Qt-Wheel-Car.jpg"

    //     Text {
    //         text: "Hello World"
    //         font.pointSize: 40
    //         anchors.centerIn: image
    //         color: "#00414A"
    //     }

    //     property string name: "joy"
    //     property int age: 28
    // }

    // property alias innerWidth: inner.width
    // property alias innerHeight: inner.height
    // property alias innerColor: inner.color
    // property alias innerName: label.text

    // Rectangle {
    //     id: inner
    //     Text {
    //         id: label
    //         anchors.centerIn: inner
    //         color: "white"

    //         // // dot notation
    //         // font.pixelSize: 16
    //         // font.bold: true

    //         // group notation
    //         font {
    //             pixelSize: 16
    //             bold: true
    //         }
    //     }
    // }

    // innerWidth: 300
    // innerHeight: 200
    // innerColor: "#00414a"
    // innerName: "Hello World"

    // property bool isClicked: false

    // Rectangle {
    //     id: rect
    //     width: root.width / 2
    //     height: root.height / 2
    //     color: root.isClicked ? "#2CDE85" : "#00414A"

    //     MouseArea {
    //         anchors.fill: parent
    //         onClicked: root.isClicked = !root.isClicked
    //     }
    // }

    // Rectangle {
    //     id: rect
    //     width: 100
    //     height: 100
    //     color: "#2cde85"
    // }

    // MouseArea {
    //     anchors.fill: parent
    //     onClicked: {
    //         console.log("Clicked")
    //         rect.x = Math.random() * (root.width - rect.width)
    //         rect.y = Math.random() * (root.height - rect.height)
    //     }
    // }

    // component SquareButton: Rectangle {
    //     id: squareButton
    //     signal activated(real xPosition, real yPosition)
    //     signal deactivated

    //     property int side: 100
    //     width: side
    //     height: side
    //     color: "#2cde85"

    //     MouseArea {
    //         anchors.fill: parent
    //         onReleased: squareButton.deactivated()
    //         onPressed: function (mouse) {
    //             squareButton.activated(mouse.x, mouse.y)
    //         }
    //     }
    // }

    // SquareButton {
    //     onDeactivated: {
    //         console.log("Deactivated")
    //     }
    //     onActivated: function (xPosition, yPosition) {
    //         console.log("Activated at:", xPosition, yPosition)
    //     }
    // }

    // PassByValue {}
    // PassByReference {}

    // function colorRandomizer() {
    //     const r = Math.random()
    //     const g = Math.random()
    //     const b = Math.random()
    //     root.color = Qt.rgba(r, g, b, 1)
    //     console.log(root.color)
    // }

    // Timer {
    //     interval: 5000
    //     running: true
    //     repeat: true
    //     onTriggered: colorRandomizer()
    // }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            MyScript.showCalculations(10)
            console.log("Call square() from QML:", MyScript.square(10))
        }
    }
}
