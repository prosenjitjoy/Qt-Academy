import QtQuick
import "my_button.js" as MyButton

Rectangle {
    id: root

    implicitWidth: image.width
    implicitHeight: image.height
    color: "white"

    signal clicked()

    Image {
        id: image

        anchors.fill: parent
        source: Qt.resolvedUrl("images/Qt_16-20.svg")
        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.clicked()
            MyButton.onClicked(root)
        }
    }
}
