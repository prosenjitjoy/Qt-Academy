import QtQuick.Controls.Basic

Label {
    id: root
    required property bool me
    required text

    padding: 8
    wrapMode: Label.Wrap

    background: GradientBackground {
        color: root.me ? Backend.myColor : Backend.theirColor
    }
}
