import QtQuick

Window {
  id: root
  width: 640
  height: root.width / 1.586
  visible: true
  title: qsTr("Business Card")

  component ContactInfo: QtObject {
    // show these properties all the time:
    property string name
    property url photo

    // Basic Info properties:
    property string occupation
    property string company

    // Detailed Info properties:
    property string address
    property string country
    property string phone
    property string email
    property url website
  }

  ContactInfo {
    id: myContactInfo
    name: "Your Name"
    photo: Qt.resolvedUrl("IDPhoto.png")
    occupation: "QML Enthusiast"
    company: "Indie Soft"
    address: "Candy Cane Lane"
    country: "North Pole"
    phone: "+01 2345 567 890"
    email: "email@server.com"
    website: Qt.url("https://www.qt.io")
  }

  Rectangle {
    id: borderRectangle
    anchors.fill: parent
    anchors.margins: 10
    border.color: "black"
    border.width: 2
    radius: 10

    Item {
      id: borderItem
      anchors.fill: parent
      anchors.margins: borderRectangle.radius

      Rectangle {
        id: photoFrame
        anchors.top: parent.top
        anchors.right: parent.right
        width: 200
        height: photoFrame.width
        border.color: "black"
        border.width: 2
        radius: 5

        Image {
          id: idPhoto
          anchors.fill: parent
          anchors.margins: photoFrame.radius
          source: myContactInfo.photo
          fillMode: Image.PreserveAspectFit
        }
      }

      Text {
        id: nameText
        text: myContactInfo.name
        font.pixelSize: 50
        font.weight: Font.Bold
        font.capitalization: Font.AllUppercase
      }

      Rectangle {
        id: detailsButton
        property bool checked: false
        property bool checkable: true
        signal clicked
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        width: 120
        height: 40
        radius: detailsButton.height / 2
        color: detailsButton.checked ? "white" : "black"
        border.color: detailsButton.checked ? "black" : "white"

        Text {
          id: buttonText
          anchors.centerIn: parent
          text: qsTr("Details")
          font.weight: Font.Bold
          color: detailsButton.checked ? "black" : "white"
        }

        TapHandler {
          id: tapHandler
          onTapped: {
            if (detailsButton.checkable) {
              detailsButton.checked = !detailsButton.checked
            }
            detailsButton.clicked()
          }
        }
      }

      Item {
        id: basicInfo
        anchors.top: nameText.bottom
        anchors.topMargin: 10
        anchors.bottomMargin: 8
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.right: photoFrame.left
        anchors.bottom: detailsButton.top

        Text {
          id: occupationText
          visible: !detailsButton.checked
          text: myContactInfo.occupation
          font.pixelSize: 30
        }

        Text {
          id: companyText
          visible: !detailsButton.checked
          text: myContactInfo.company
          font.pixelSize: 25
          anchors.top: occupationText.bottom
          anchors.topMargin: 10
        }

        Text {
          id: addressText
          visible: detailsButton.checked
          text: myContactInfo.address
          font.pixelSize: 30
        }

        Text {
          id: countryText
          visible: detailsButton.checked
          text: myContactInfo.country
          font.pixelSize: 25
          anchors.top: addressText.bottom
          anchors.topMargin: 10
        }

        Text {
          id: phoneText
          visible: detailsButton.checked
          text: myContactInfo.phone
          font.pixelSize: 20
          anchors.top: countryText.bottom
          anchors.topMargin: 10
        }

        Text {
          id: emailText
          visible: detailsButton.checked
          text: myContactInfo.email
          font.pixelSize: 20
          anchors.top: phoneText.bottom
          anchors.topMargin: 10
        }

        Text {
          id: websiteText
          visible: detailsButton.checked
          text: myContactInfo.website
          font.pixelSize: 20
          anchors.top: emailText.bottom
          anchors.topMargin: 10
        }
      }
    }
  }
}
