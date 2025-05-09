import QtQuick
import QtQuick.Layouts

Flickable {
    id: root

    contentHeight: chatColumnLayout.height
    contentWidth: chatColumnLayout.width

    clip: true

    ColumnLayout {
        id: chatColumnLayout
        width: root.width
        spacing: 8

        Repeater {
            model: Backend.chat

            ChatBubble {
                Layout.alignment: me ? Qt.AlignRight : Qt.AlignLeft
                Layout.maximumWidth: parent.width * 0.75
            }
        }
    }

    Binding {
        root.contentY: root.contentHeight - root.height
        when: root.height < root.contentHeight
    }
}
