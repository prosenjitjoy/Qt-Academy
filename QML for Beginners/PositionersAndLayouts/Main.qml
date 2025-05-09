pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

ApplicationWindow {
  id: window

  width: 1280
  height: 800
  visible: true
  title: qsTr("Positioners and Layouts")

  color: "black"
  palette.windowText: "white"

  property int currentImageIndex: 0

  readonly property int tabletBreakPoint: 1000
  readonly property int mobileBreakPoint: 600
  readonly property bool isDesktopLayout: window.width > tabletBreakPoint
  readonly property bool isTabletLayout: window.width <= tabletBreakPoint && window.width > mobileBreakPoint
  readonly property bool isMobileLayout: window.width <= mobileBreakPoint

  // Label {
  //   id: label
  //   text: "This is a label"
  //   font.pixelSize: 16
  //   TapHandler {
  //     onTapped: console.log(label.width)
  //   }
  //   background: Rectangle {
  //     anchors.fill: parent
  //     color: "red"
  //   }
  // }

  // Rectangle {
  //   width: 100
  //   height: 100
  // }

  // contentItem {
  //   scale: 0.2
  //   transformOrigin: Item.TopLeft
  // }

  // Image {
  //   id: image0
  //   source: Qt.resolvedUrl("assets/image0.jpg")
  // }
  // Image {
  //   id: image1
  //   anchors.left: image0.right
  //   source: Qt.resolvedUrl("assets/image1.jpg")
  // }
  // Image {
  //   id: image2
  //   anchors.left: image1.right
  //   source: Qt.resolvedUrl("assets/image2.jpg")
  // }
  // Image {
  //   id: image3
  //   anchors.left: image2.right
  //   source: Qt.resolvedUrl("assets/image3.jpg")
  // }
  // Image {
  //   id: image4
  //   anchors.left: image3.right
  //   source: Qt.resolvedUrl("assets/image4.jpg")
  // }
  // Image {
  //   id: image5
  //   anchors.left: image4.right
  //   source: Qt.resolvedUrl("assets/image5.jpg")
  // }
  // Image {
  //   id: image6
  //   anchors.left: image5.right
  //   source: Qt.resolvedUrl("assets/image6.jpg")
  // }
  // Image {
  //   id: image7
  //   anchors.left: image6.right
  //   source: Qt.resolvedUrl("assets/image7.jpg")
  // }
  // Image {
  //   id: image8
  //   anchors.left: image7.right
  //   source: Qt.resolvedUrl("assets/image8.jpg")
  // }
  // Image {
  //   id: image9
  //   anchors.left: image8.right
  //   source: Qt.resolvedUrl("assets/image9.jpg")
  // }

  // Component {
  //   id: redSquare
  //   Rectangle {
  //     width: 100
  //     height: 100
  //     color: "red"
  //     border.color: "black"
  //   }
  // }

  // Column {
  //   anchors.centerIn: parent
  //   Repeater {
  //     model: 3
  //     delegate: redSquare
  //   }
  // }

  // Component {
  //   id: number
  //   Text {
  //     text: index // repeater adds a read-only property to each delegate
  //     color: "black"
  //     font.pixelSize: 80
  //   }
  // }

  // Column {
  //   anchors.centerIn: parent
  //   Repeater {
  //     model: 3
  //     delegate: number
  //   }
  // }

  // Component {
  //   id: square
  //   Rectangle {
  //     width: 100
  //     height: 100
  //     color: Positioner.isFirstItem ? "yellowgreen": "red"
  //     border.color: "black"
  //   }
  // }

  // Column {
  //   anchors.centerIn: parent
  //   Repeater {
  //     model: 3
  //     delegate: square
  //   }
  // }

  // Component {
  //   id: imageDelegate
  //   Image {
  //     id: image
  //     required property int index
  //     source: `assets/image${index}.jpg`
  //     width: 100
  //     height: 100
  //     asynchronous: true

  //     Text {
  //       anchors.centerIn: parent
  //       text: image.Positioner.index
  //       font.pixelSize: 30
  //       color: "white"
  //       style: Text.Outline
  //       styleColor: "black"
  //     }

  //     Rectangle {
  //       anchors.fill: parent
  //       color: "transparent"
  //       border {
  //         width: 5
  //         color: image.Positioner.isFirstItem ? "green" : image.Positioner.isLastItem ? "red" : "transparent"
  //       }
  //     }
  //   }
  // }

  // Row {
  //   spacing: 10
  //   padding: 10
  //   layoutDirection: Qt.RightToLeft

  //   Repeater {
  //     model: 10
  //     delegate: imageDelegate
  //   }
  // }

  // Column {
  //   spacing: 10
  //   padding: 10

  //   Repeater {
  //     model: 10
  //     delegate: imageDelegate
  //   }
  // }

  // Grid {
  //   spacing: 10
  //   padding: 10
  //   rowSpacing: 20
  //   columnSpacing: 30
  //   flow: Flow.TopToBottom

  //   Repeater {
  //     model: 10
  //     delegate: imageDelegate
  //   }
  // }

  // Flow {
  //   anchors.fill: parent
  //   spacing: 10
  //   padding: 10
  //   flow: Flow.TopToBottom

  //   Repeater {
  //     model: 10
  //     delegate: imageDelegate
  //   }
  // }

  // Flickable {
  //   anchors.fill: parent
  //   contentWidth: image.width
  //   contentHeight: image.height
  //   Image {
  //     id: image
  //     source: "assets/image2.jpg"
  //   }
  // }

  // Component {
  //   id: imageDelegate
  //   Image {
  //     required property int index
  //     source: `assets/image${index}.jpg`
  //     fillMode: Image.PreserveAspectCrop

  //     Layout.fillWidth: true
  //     Layout.fillHeight: true
  //   }
  // }

  // RowLayout {
  //   anchors.fill: parent
  //   layoutDirection: Qt.RightToLeft

  //   Repeater {
  //     model: 10
  //     delegate: imageDelegate
  //   }
  // }

  // ColumnLayout {
  //   anchors.fill: parent
  //   layoutDirection: Qt.RightToLeft

  //   Repeater {
  //     model: 10
  //     delegate: imageDelegate
  //   }
  // }

  // GridLayout {
  //   anchors.fill: parent
  //   // layoutDirection: Qt.RightToLeft
  //   columns: 5

  //   Repeater {
  //     model: 10
  //     delegate: imageDelegate
  //   }
  // }

  Component {
    id: thumbnailDelegate

    Image {
      id: thumbnail

      required property int index

      source: Qt.resolvedUrl(`assets/image${index}.jpg`)
      asynchronous: true

      Layout.preferredWidth: 100
      Layout.preferredHeight: 100

      Rectangle {
        anchors.fill: parent
        color: "transparent"
        border {
          color: "white"
          width: window.currentImageIndex == thumbnail.index ? 2 : 0
        }
      }

      Label {
        anchors.centerIn: parent
        font.pixelSize: 30
        style: Text.Outline
        styleColor: "black"
        text: thumbnail.index
      }

      MouseArea {
        anchors.fill: parent
        onClicked: window.currentImageIndex = thumbnail.index
      }
    }
  }

  // RowLayout {
  //   anchors {
  //     fill: parent
  //     margins: 5
  //   }

  //   Flickable {
  //     id: flickable

  //     contentWidth: gridLayout.width
  //     contentHeight: gridLayout.height

  //     Layout.fillHeight: true
  //     Layout.preferredWidth: gridLayout.width

  //     clip: true

  //     GridLayout {
  //       id: gridLayout

  //       columns: 2

  //       Repeater {
  //         model: 10
  //         delegate: thumbnailDelegate
  //       }
  //     }
  //   }

  //   ColumnLayout {
  //     Image {
  //       id: previewImage

  //       Layout.fillWidth: true
  //       Layout.fillHeight: true

  //       source: Qt.resolvedUrl(`assets/image${window.currentImageIndex}.jpg`)
  //       asynchronous: true
  //     }

  //     RowLayout {
  //       id: imageDetails

  //       Layout.minimumHeight: 40

  //       Label {
  //         id: sourceTitle
  //         text: qsTr("Source")
  //         font.bold: true
  //       }

  //       Label {
  //         id: sourceValue
  //         text: previewImage.source
  //       }

  //       Label {
  //         id: widthTitle
  //         text: qsTr("Width")
  //         font.bold: true
  //       }
  //       Label {
  //         id: widthValue
  //         text: previewImage.sourceSize.width
  //       }

  //       Label {
  //         id: heightTitle
  //         text: qsTr("Height")
  //         font.bold: true
  //       }
  //       Label {
  //         id: heightValue
  //         text: previewImage.sourceSize.height
  //       }

  //       Label {
  //         id: paintedWidthTitle
  //         text: qsTr("Painted Width")
  //         font.bold: true
  //       }
  //       Label {
  //         id: paintedWidthValue
  //         text: previewImage.paintedWidth
  //       }

  //       Label {
  //         id: paintedHeightTitle
  //         text: qsTr("Painted Height")
  //         font.bold: true
  //       }
  //       Label {
  //         id: paintedHeightValue
  //         text: previewImage.paintedHeight
  //       }
  //     }
  //   }
  // }

  Flickable {
    id: flickable

    contentWidth: gridLayout.width
    contentHeight: gridLayout.height

    clip: true

    GridLayout {
      id: gridLayout

      columns: window.isDesktopLayout ? 2 : window.isTabletLayout ? 1 : -1
      rows: window.isMobileLayout ? 1 : -1

      Repeater {
        model: 10
        delegate: thumbnailDelegate
      }
    }
  }

  Image {
    id: previewImage

    Layout.fillWidth: true
    Layout.fillHeight: true

    source: Qt.resolvedUrl(`assets/image${window.currentImageIndex}.jpg`)
    asynchronous: true
  }

  Label {
    id: sourceTitle
    text: qsTr("Source")
    font.bold: true
  }

  Label {
    id: sourceValue
    text: previewImage.source
  }

  Label {
    id: widthTitle
    text: qsTr("Width")
    font.bold: true
  }
  Label {
    id: widthValue
    text: previewImage.sourceSize.width
  }

  Label {
    id: heightTitle
    text: qsTr("Height")
    font.bold: true
  }
  Label {
    id: heightValue
    text: previewImage.sourceSize.height
  }

  Label {
    id: paintedWidthTitle
    text: qsTr("Painted Width")
    font.bold: true
  }
  Label {
    id: paintedWidthValue
    text: previewImage.paintedWidth
  }

  Label {
    id: paintedHeightTitle
    text: qsTr("Painted Height")
    font.bold: true
  }
  Label {
    id: paintedHeightValue
    text: previewImage.paintedHeight
  }

  RowLayout {
    // desktop layout
    visible: window.isDesktopLayout
    anchors {
      fill: parent
      margins: 5
    }

    LayoutItemProxy {
      target: flickable
      Layout.fillHeight: true
      Layout.preferredWidth: gridLayout.width
    }

    ColumnLayout {
      LayoutItemProxy {
        target: previewImage
      }

      RowLayout {
        Layout.minimumHeight: 40
        LayoutItemProxy {
          target: sourceTitle
        }
        LayoutItemProxy {
          target: sourceValue
        }
        LayoutItemProxy {
          target: widthTitle
        }
        LayoutItemProxy {
          target: widthValue
        }
        LayoutItemProxy {
          target: heightTitle
        }
        LayoutItemProxy {
          target: heightValue
        }
        LayoutItemProxy {
          target: paintedWidthTitle
        }
        LayoutItemProxy {
          target: paintedWidthValue
        }
        LayoutItemProxy {
          target: paintedHeightTitle
        }
        LayoutItemProxy {
          target: paintedHeightValue
        }
      }
    }
  }

  RowLayout {
    // tablet layout
    visible: window.isTabletLayout
    anchors {
      fill: parent
      margins: 5
    }

    LayoutItemProxy {
      target: flickable
      Layout.fillHeight: true
      Layout.preferredWidth: gridLayout.width
    }

    LayoutItemProxy {
      target: previewImage
    }

    ColumnLayout {
      Layout.alignment: Qt.AlignTop
      LayoutItemProxy {
        target: sourceTitle
      }
      LayoutItemProxy {
        target: sourceValue
        Layout.leftMargin: 5
      }
      LayoutItemProxy {
        target: widthTitle
      }
      LayoutItemProxy {
        target: widthValue
        Layout.leftMargin: 5
      }
      LayoutItemProxy {
        target: heightTitle
      }
      LayoutItemProxy {
        target: heightValue
        Layout.leftMargin: 5
      }
      LayoutItemProxy {
        target: paintedWidthTitle
      }
      LayoutItemProxy {
        target: paintedWidthValue
        Layout.leftMargin: 5
      }
      LayoutItemProxy {
        target: paintedHeightTitle
      }
      LayoutItemProxy {
        target: paintedHeightValue
        Layout.leftMargin: 5
      }
    }
  }

  ColumnLayout {
    // mobile layout
    visible: window.isMobileLayout
    anchors {
      fill: parent
      margins: 5
    }

    LayoutItemProxy {
      target: previewImage
    }

    GridLayout {
      columns: 4
      LayoutItemProxy {
        target: sourceTitle
      }
      LayoutItemProxy {
        target: sourceValue
        Layout.columnSpan: 3
      }
      LayoutItemProxy {
        target: widthTitle
      }
      LayoutItemProxy {
        target: widthValue
      }
      LayoutItemProxy {
        target: heightTitle
      }
      LayoutItemProxy {
        target: heightValue
      }
      LayoutItemProxy {
        target: paintedWidthTitle
      }
      LayoutItemProxy {
        target: paintedWidthValue
      }
      LayoutItemProxy {
        target: paintedHeightTitle
      }
      LayoutItemProxy {
        target: paintedHeightValue
      }
    }

    LayoutItemProxy {
      target: flickable
      Layout.fillWidth: true
      Layout.preferredHeight: gridLayout.height
    }
  }

  // readonly property bool useRowLayout: window.width > 480

  // Image {
  //   id: image1
  //   source: "assets/image0.jpg"
  //   fillMode: Image.PreserveAspectCrop
  //   Layout.fillWidth: true
  //   Layout.fillHeight: true
  // }

  // Image {
  //   id: image2
  //   source: "assets/image1.jpg"
  //   fillMode: Image.PreserveAspectCrop
  //   Layout.fillWidth: true
  //   Layout.fillHeight: true
  // }

  // RowLayout {
  //   visible: window.useRowLayout
  //   anchors.fill: parent

  //   LayoutItemProxy {
  //     target: image1
  //   }
  //   LayoutItemProxy {
  //     target: image2
  //   }
  // }

  // ColumnLayout {
  //   visible: !window.useRowLayout
  //   anchors.fill: parent

  //   LayoutItemProxy {
  //     target: image1
  //   }
  //   LayoutItemProxy {
  //     target: image2
  //   }
  // }
}
