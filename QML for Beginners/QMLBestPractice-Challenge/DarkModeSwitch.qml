// Copyright (C) 2026 Qt Group.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

RowLayout {
    spacing: 0

    Image {
        source: Theme.darkMode ? Qt.resolvedUrl("images/lightModeWhite") :
                                 Qt.resolvedUrl("images/lightModeBlack")

        Layout.alignment: Qt.AlignLeft

        TapHandler {
            onTapped: Theme.darkMode = false
        }
    }

    Switch {
        checked: Theme.darkMode

        Layout.fillWidth: true

        onClicked: Theme.darkMode = checked
    }

    Image {
        source: Theme.darkMode ? Qt.resolvedUrl("images/darkModeWhite") :
                                 Qt.resolvedUrl("images/darkModeBlack")

        Layout.alignment: Qt.AlignRight

        TapHandler {
            onTapped: Theme.darkMode = true
        }
    }
}
