pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: window
    width: 800
    height: 600
    visible: true
    title: qsTr("Fluid Elements and Animation")

    // property int currentColorIndex: 1
    // Behavior on color {
    //     ColorAnimation {
    //         duration: 1000
    //         easing.type: Easing.InOutQuad
    //     }
    // }

    // Timer {
    //     interval: 1000
    //     repeat: true
    //     running: true
    //     onTriggered: {
    //         if (window.currentColorIndex == 1) {
    //             animatedRectangle.color = "blue"
    //             window.currentColorIndex = 2
    //         } else {
    //             animatedRectangle.color = "red"
    //             window.currentColorIndex = 1
    //         }
    //     }
    // }

    // Rectangle {
    //     id: animatedRectangle
    //     width: 100
    //     height: 100
    //     color: "red"
    //     x: 0
    //     y: 0
    // }

    // PropertyAnimation {
    //     target: animatedRectangle
    //     property: "rotation"
    //     from: 0
    //     to: 360
    //     duration: 2000
    //     loops: Animation.Infinite
    //     easing.type: Easing.InOutQuad
    //     running: true
    // }

    // SequentialAnimation {
    //     loops: Animation.Infinite
    //     PropertyAnimation {
    //         target: animatedRectangle
    //         property: "scale"
    //         from: 1.0
    //         to: 1.5
    //         duration: 2000
    //     }
    //     PauseAnimation { duration: 500 }
    //     PropertyAnimation {
    //         target: animatedRectangle
    //         property: "scale"
    //         from: 1.5
    //         to: 1.0
    //         duration: 2000
    //     }
    //     running: true
    // }

    // ParallelAnimation {
    //     loops: Animation.Infinite
    //     NumberAnimation {
    //         target: animatedRectangle
    //         property: "x"
    //         from: 0
    //         to: 600
    //         duration: 2000
    //     }
    //     NumberAnimation {
    //         target: animatedRectangle
    //         property: "y"
    //         from: 0
    //         to: 400
    //         duration: 2000
    //     }
    //     running: true
    // }

    // Rectangle {
    //     width: 250
    //     height: 100
    //     anchors.centerIn: parent

    //     ColorAnimation on color {
    //         from: "darkslategrey"
    //         to: "slategrey"
    //         duration: 2000
    //         loops: Animation.Infinite
    //         easing.type: Easing.InOutQuad
    //     }
    // }

    // Rectangle {
    //     anchors.centerIn: parent
    //     height: 100
    //     color: "darkslategray"
    //     NumberAnimation on width {
    //         from: 250
    //         to: 150
    //         duration: 2000
    //         loops: Animation.Infinite
    //         easing.type: Easing.InOutQuad
    //     }
    // }

    // Rectangle {
    //     anchors.centerIn: parent
    //     width: 100
    //     height: 100
    //     color: "darkslategray"

    //     RotationAnimation on rotation {
    //         to: 360
    //         duration: 2000
    //         loops: Animation.Infinite
    //         easing.type: Easing.InOutQuad
    //     }
    // }

    // // as a transition
    // Rectangle {
    //     id: rect
    //     width: 100
    //     height: 100
    //     y: (parent.height / 2) - (height / 2)
    //     color: "darkslategray"

    //     states: State {
    //         name: "moved"
    //         when: mouseArea.pressed
    //         PropertyChanges {
    //             rect.width: window.width
    //         }
    //     }
    //     transitions: Transition {
    //         PropertyAnimation {
    //             property: "width"
    //             easing.type: Easing.InOutQuad
    //         }
    //     }
    //     MouseArea {
    //         id: mouseArea
    //         anchors.fill: parent
    //     }
    // }

    // // in a behavior element
    // Rectangle {
    //     id: rect
    //     width: 100
    //     height: 100
    //     y: (window.height / 2) - (rect.height / 2)
    //     color: "darkslategray"

    //     Behavior on width {
    //         PropertyAnimation {
    //             easing.type: Easing.InOutQuad
    //         }
    //     }


    //     MouseArea {
    //         id: mouseArea
    //         anchors.fill: parent
    //         onPressed: rect.width = window.width
    //         onReleased: rect.width = 100
    //     }
    // }

    // // as a property value source
    // Rectangle {
    //     id: rect
    //     width: 250
    //     height: 100
    //     color: "darkslategray"

    //     SequentialAnimation on scale {
    //         loops: Animation.Infinite
    //         PropertyAnimation {
    //             to: 0.8
    //             duration: 2000
    //         }
    //         PropertyAnimation {
    //             to: 0.1
    //             duration: 2000
    //         }
    //     }
    // }

    // Image {
    //     id: send
    //     source: Qt.resolvedUrl("assets/send.png")
    //     y: window.height / 2 - send.height / 2

    //     PropertyAnimation {
    //         target: send
    //         property: "x"
    //         from: -send.width
    //         to: window.width
    //         duration: 2000
    //         loops: Animation.Infinite
    //         easing.type: Easing.OutInQuart
    //         running: true
    //     }
    // }

    // Image {
    //     id: appGrid
    //     anchors.centerIn: parent
    //     source: Qt.resolvedUrl("assets/appgrid.png")
    //     fillMode: Image.PreserveAspectCrop

    //     ParallelAnimation {
    //         loops: Animation.Infinite
    //         NumberAnimation {
    //             target: appGrid
    //             property: "scale"
    //             duration: 900
    //             from: 0
    //             to: 1
    //         }
    //         NumberAnimation {
    //             target: appGrid
    //             property: "opacity"
    //             duration: 1100
    //             from: 0
    //             to: 1
    //         }
    //         running: true
    //     }
    // }

    // Image {
    //     id: appGrid
    //     anchors.centerIn: parent
    //     source: Qt.resolvedUrl("assets/appgrid.png")
    //     fillMode: Image.PreserveAspectCrop
    //     scale: 0

    //     SequentialAnimation {
    //         loops: Animation.Infinite
    //         NumberAnimation {
    //             target: appGrid
    //             property: "scale"
    //             to: 1.2
    //             duration: 250
    //         }
    //         NumberAnimation {
    //             target: appGrid
    //             property: "opacity"
    //             to: 1
    //             duration: 100
    //         }
    //         PauseAnimation {
    //             duration: 1000
    //         }
    //         NumberAnimation {
    //             target: appGrid
    //             property: "scale"
    //             to: 0
    //             duration: 150
    //         }
    //         PauseAnimation {
    //             duration: 1000
    //         }
    //         running: true
    //     }
    // }

    // Column {
    //     anchors.fill: parent
    //     spacing: 20

    //     Rectangle {
    //         id: red
    //         width: 100
    //         height: 50
    //         color: "red"

    //         PropertyAnimation {
    //             target: red
    //             property: "x"
    //             from: 0
    //             to: window.width - red.width
    //             duration: 3000
    //             loops: Animation.Infinite
    //             easing.type: Easing.InOutQuad
    //             running: true
    //         }

    //         Text {
    //             text: "InOutQuad"
    //             anchors.centerIn: parent
    //         }
    //     }
    //     Rectangle {
    //         id: blue
    //         width: 100
    //         height: 50
    //         color: "blue"

    //         PropertyAnimation {
    //             target: blue
    //             property: "x"
    //             from: 0
    //             to: window.width - blue.width
    //             duration: 3000
    //             loops: Animation.Infinite
    //             easing.type: Easing.OutBounce
    //             running: true
    //         }

    //         Text {
    //             text: "OutBounce"
    //             anchors.centerIn: parent
    //         }
    //     }
    //     Rectangle {
    //         id: green
    //         width: 100
    //         height: 50
    //         color: "green"

    //         PropertyAnimation {
    //             target: green
    //             property: "x"
    //             from: 0
    //             to: window.width - green.width
    //             duration: 3000
    //             loops: Animation.Infinite
    //             easing.type: Easing.InElastic
    //             running: true
    //         }

    //         Text {
    //             text: "InElastic"
    //             anchors.centerIn: parent
    //         }
    //     }
    // }

    // Image {
    //     anchors.centerIn: parent
    //     source: Qt.resolvedUrl("assets/notification.png")
    //     fillMode: Image.PreserveAspectCrop

    //     SequentialAnimation on rotation {
    //         loops: Animation.Infinite
    //         RotationAnimation {
    //             to: -20
    //             duration: 700
    //             easing.type: Easing.OutBounce
    //         }
    //         PauseAnimation {
    //             duration: 50
    //         }
    //         RotationAnimation {
    //             to: 20
    //             duration: 700
    //             easing.type: Easing.OutBounce
    //         }
    //         PauseAnimation {
    //             duration: 50
    //         }
    //     }
    // }

    // Rectangle {
    //     id: sky
    //     width: window.width
    //     height: 30
    //     color: "lightblue"
    //     anchors {
    //         horizontalCenter: parent.horizontalCenter
    //         top: parent.top
    //     }
    // }

    // Rectangle {
    //     id: trampoline
    //     width: window.width
    //     height: 100
    //     color: "green"
    //     anchors {
    //         horizontalCenter: parent.horizontalCenter
    //         bottom: parent.bottom
    //     }
    // }

    // Rectangle {
    //     id: ball
    //     width: 50
    //     height: ball.width
    //     radius: ball.width / 2
    //     color: "red"
    //     anchors.horizontalCenter: parent.horizontalCenter
    //     y: trampoline.y - ball.height

    //     Behavior on y {
    //         SpringAnimation {
    //             id: behaviorAnimation
    //             spring: 3
    //             damping: 0.2
    //         }
    //     }
    // }

    // Text {
    //     anchors.centerIn: parent
    //     text: "Click me"
    //     font.pixelSize: 25
    //     color: "white"
    //     visible: !behaviorAnimation.running
    // }

    // MouseArea {
    //     anchors.fill: parent
    //     onClicked: {
    //         if (ball.y == 50) {
    //             ball.y = trampoline.y - ball.height
    //         } else {
    //             ball.y = 50
    //         }
    //     }
    // }

    // MouseArea {
    //     anchors.fill: parent
    //     onClicked: {
    //         rect.width = (rect.width == 100) ? 250 : 100
    //     }

    //     Rectangle {
    //         id: rect
    //         anchors.centerIn: parent
    //         width: 100
    //         height: 100
    //         color: "darkslategray"

    //         Behavior on width {
    //             NumberAnimation {}
    //         }
    //     }
    // }

    // MouseArea {
    //     anchors.fill: parent
    //     onClicked: {
    //         ball.x = Math.random() * (window.width - ball.width)
    //     }

    //     Image {
    //         id: ball
    //         source: Qt.resolvedUrl("assets/football.png")
    //         fillMode: Image.PreserveAspectCrop

    //         y: (window.height / 2) - (ball.height / 2)

    //         Behavior on x {
    //             SpringAnimation {
    //                 damping: 0.1
    //                 spring: 5.0
    //             }
    //         }
    //     }
    // }

    // property int pulse: 60
    // property real speed: 3000 / (pulse/60)


    // Item {
    //     id: root
    //     anchors.verticalCenter: parent.verticalCenter
    //     width: parent.width - heart.width
    //     height: 200

    //     Path {
    //         id: path
    //         startX: 0
    //         startY: root.height

    //         PathLine {
    //             x: root.width * 0.125
    //             y: root.height / 2
    //         }
    //         PathLine {
    //             x: root.width * 0.1875
    //             y: root.height / 4
    //         }
    //         PathLine {
    //             x: root.width * 0.25
    //             y: root.height * 3 / 4
    //         }
    //         PathLine {
    //             x: root.width * 0.3125
    //             y: root.height / 2
    //         }
    //         PathLine {
    //             x: root.width * 0.375
    //             y: root.height / 2
    //         }
    //         PathLine {
    //             x: root.width * 0.4375
    //             y: root.height / 4
    //         }
    //         PathLine {
    //             x: root.width * 0.5
    //             y: root.height * 3 / 4
    //         }
    //         PathLine {
    //             x: root.width * 0.5625
    //             y: root.height / 2
    //         }
    //         PathLine {
    //             x: root.width * (0.5+0.125)
    //             y: root.height / 2
    //         }
    //         PathLine {
    //             x: root.width * (0.5+0.1875)
    //             y: root.height / 4
    //         }
    //         PathLine {
    //             x: root.width * (0.5+0.25)
    //             y: root.height * 3 / 4
    //         }
    //         PathLine {
    //             x: root.width * (0.5+0.3125)
    //             y: root.height / 2
    //         }
    //         PathLine {
    //             x: root.width * (0.5+0.375)
    //             y: root.height / 2
    //         }
    //         PathLine {
    //             x: root.width * (0.5+0.4375)
    //             y: root.height / 4
    //         }
    //         PathLine {
    //             x: root.width * (0.5+0.5)
    //             y: root.height /2
    //         }
    //     }

    //     Rectangle {
    //         id: pulseLine
    //         width: 10
    //         height: 10
    //         radius: 5
    //         color: "red"

    //         PathAnimation {
    //             id: pathAnimation
    //             target: pulseLine
    //             path: path
    //             duration: window.speed
    //             loops: Animation.Infinite
    //             easing.type: Easing.Linear
    //             running: true
    //         }
    //     }

    //     Repeater {
    //         id: rep
    //         model: 20

    //         delegate: Rectangle {
    //             id: shadowLine
    //             required property int index
    //             property var shadowPath: path
    //             property int delay: 20
    //             width: 10
    //             height: 10
    //             radius: 5
    //             color: "red"
    //             opacity: 1.0 - (index / rep.model)

    //             SequentialAnimation {
    //                 loops: Animation.Infinite
    //                 PauseAnimation {
    //                     duration: shadowLine.delay * shadowLine.index
    //                 }
    //                 PathAnimation {
    //                     target: shadowLine
    //                     path: shadowLine.shadowPath
    //                     duration: window.speed - shadowLine.delay*shadowLine.index
    //                     easing.type: Easing.Linear
    //                 }
    //                 running: true
    //             }
    //         }
    //     }

    //     Item {
    //         id: heartArea
    //         width: 100
    //         height: root.height
    //         anchors {
    //             left: root.right
    //             leftMargin: -heart.width*0.5
    //         }

    //         Image {
    //             id: heart
    //             anchors.centerIn: parent
    //             width: 100
    //             height: 100
    //             source: Qt.resolvedUrl("assets/heart.svg")

    //             Behavior on scale {
    //                 NumberAnimation {
    //                     duration: 20
    //                 }
    //             }
    //         }

    //         Timer {
    //             id: animationTimer
    //             interval: 16
    //             repeat: true
    //             running: true
    //             onTriggered: {
    //                 var heartScale = 1+(root.height/2-pulseLine.y)/(root.height/4)
    //                 heart.scale = Math.max(0.5, heartScale)
    //             }
    //         }
    //     }
    // }

    // Item {
    //     id: container
    //     anchors.centerIn: parent
    //     width: 100
    //     height: 100
    //     readonly property real radius: width / 2

    //     Path {
    //         id: motionPath
    //         startX: container.width / 2
    //         startY: 0

    //         PathSvg {
    //             path: `M ${container.width / 2} 0
    //             A ${container.radius} ${container.radius}
    //             0 0 1 ${container.width} ${container.height / 2}
    //             A ${container.radius} ${container.radius}
    //             0 0 1 ${container.width / 2} ${container.height}
    //             A ${container.radius} ${container.radius}
    //             0 0 1 0 ${container.height / 2}
    //             A ${container.radius} ${container.radius}
    //             0 0 1 ${container.width / 2} 0`
    //         }
    //     }

    //     Repeater {
    //         model: 12
    //         delegate: Dot{}
    //     }

    //     component Dot: Rectangle {
    //         id: dotDelegate
    //         width: 10
    //         height: width
    //         radius: width/2
    //         color: "#0066cc"
    //         opacity: 0
    //         required property int index

    //         SequentialAnimation {
    //             running: true
    //             PauseAnimation {
    //                 duration: dotDelegate.index * 175
    //             }
    //             ParallelAnimation {
    //                 NumberAnimation {
    //                     target: dotDelegate
    //                     property: "opacity"
    //                     to: 1
    //                     duration: 200
    //                 }
    //                 PathAnimation {
    //                     target: dotDelegate
    //                     path: motionPath
    //                     duration: 2200
    //                     loops: Animation.Infinite
    //                     easing {
    //                         type: Easing.BezierSpline
    //                         bezierCurve: [0.48, 0.75, 0.51, 0.27, 1.0, 1.0]
    //                     }
    //                 }
    //             }
    //         }
    //     }
    // }

    ColumnLayout {
        anchors.centerIn: parent
        Button {
            text: "Toggle State"
            onClicked: {
                rect.state = (rect.state == "default") ? "state1" : "default"
            }
        }
        Rectangle {
            id: rect
            Layout.preferredWidth: 400
            Layout.preferredHeight: 200
            radius: 20
            color: "green"
            state: "default"
            states: [
                State {
                    name: "default"
                    PropertyChanges {
                        rect.width: 400
                        rect.height: rect.width / 2
                        rect.radius: rect.width * 0.05
                        rect.color: "green"
                    }
                },
                State {
                    name: "state1"
                    PropertyChanges {
                        rect.width: 200
                        rect.height: rect.width
                        rect.radius: rect.height / 2
                        rect.color: "red"
                    }
                }
            ]

            transitions: [
                Transition {
                    from: "default"
                    to: "state1"
                    NumberAnimation {
                        properties: "radius,width"
                        duration: 2000
                        easing.type: Easing.OutBounce
                    }
                    ColorAnimation {
                        properties: "color"
                        duration: 2000
                        easing.type: Easing.OutBounce
                    }
                },
                Transition {
                    from: "state1"
                    to: "default"
                    NumberAnimation {
                        properties: "radius,width"
                        duration: 2000
                        easing.type: Easing.OutExpo
                    }
                    ColorAnimation {
                        properties: "color"
                        duration: 2000
                        easing.type: Easing.OutExpo
                    }
                }
            ]
        }
    }
}
