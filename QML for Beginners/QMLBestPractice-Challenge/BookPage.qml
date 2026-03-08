// Copyright (C) 2026 Qt Group.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import QtQuick.Controls.Basic

Page {
    id: root

    required property Chapter modelData
    required property int index

    padding: 8

    header: Label {
        leftPadding: 8

        font: Theme.heading1
        text: qsTr("Chapter ") + (root.index + 1) + ": " + root.modelData.title
    }

    Flickable {
        id: flickable

        anchors.fill: parent
        clip: true
        contentHeight: pageContent.height // free to expand
        contentWidth: pageContent.width // which is clamped to the flickable width

        Label {
            id: pageContent

            font: Theme.body
            text: root.modelData.text
            width: flickable.width
            // You may notice the wrapping doesn't work!
            // This is because "parent" here is not actually
            // the Flickable! See Flickable's docs for details.
            wrapMode: Label.Wrap
        }
    }

    background: Rectangle {
        color: Theme.background
    }
}
