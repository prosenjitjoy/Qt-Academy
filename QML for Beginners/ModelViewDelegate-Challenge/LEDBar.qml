pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts

ColumnLayout {
    id: root
    property int ledPerBar: 50
    required property real volumeLevel

    width: 20
    height: 100
    spacing: 1

    Repeater {
        model: root.ledPerBar

        delegate: LED {
            required property int index

            Layout.fillWidth: true
            Layout.fillHeight: true
            threshold: 1 - (index/root.ledPerBar)
            volumeLevel: root.volumeLevel
        }
    }
}
