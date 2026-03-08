// Copyright (C) 2026 Qt Group.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick

Image {
    id: root

    signal clicked()

    source: Theme.darkMode ? Qt.resolvedUrl("images/settingsWhite") :
                             Qt.resolvedUrl("images/settingsBlack")

    TapHandler {
        onTapped: root.clicked()
    }
}
