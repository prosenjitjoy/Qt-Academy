pragma ComponentBehavior: Bound
import QtQuick
import CppModelsWithQmlViews

Window {
  id: window

  width: 1280
  height: 720
  visible: true
  title: qsTr("C++ Models With Qml Views")

  ContactsListModel {
    id: contactsModel
  }

  ListView {
    id: contactsView

    anchors.fill: parent

    model: contactsModel
    delegate: contactsDelegate
    header: contactsHeader
    footer: contactsFooter

    orientation: ListView.Vertical

    section.delegate: contactsSection
    section.property: "lastName"

    highlight: contactsHighlight
    highlightFollowsCurrentItem: true
    highlightMoveDuration: 1
    highlightResizeDuration: 1
    focus: true

    displaced: displacedTransition
    add: addTransition
    remove: removeTransition
    move: moveTransition

    Keys.onDeletePressed: function () {
      if (contactsView.currentIndex < 0) {
        console.log("Must select an element to delete an entry")
      } else {
        var index = contactsView.model.index(contactsView.currentIndex, 0)
        contactsView.model.removeRows(contactsView.currentIndex, 1, index.parent)
      }
    }

    Keys.onEscapePressed: function () {
      contactsView.currentIndex = -1
    }

    Keys.onSpacePressed: function () {
      if (contactsView.currentIndex < 0) {
        console.log("Must select an element to modify an entry")
      } else {
        var index = contactsView.model.index(contactsView.currentIndex, 0)
        contactsView.model.setData(index, "Greg, Doe, 100, 123-456-7890")
      }
    }

    Keys.onUpPressed: function () {
      if (contactsView.count <= 1) {
        console.log("Not enough elements in model to move an element")
      } else if (contactsView.currentIndex == 0) {
        console.log("Cannot move first element up")
      } else {
        var sourceIndex = contactsView.model.index(contactsView.currentIndex, 0)
        var destinationIndex = contactsView.model.index(contactsView.currentIndex - 1, 0)
        contactsView.model.moveRows(sourceIndex.parent, contactsView.currentIndex, 1, destinationIndex.parent, contactsView.currentIndex - 1)
      }
    }

    Keys.onDownPressed: function () {
      if (contactsView.count <= 1) {
        console.log("Not enough elements in model to move an element")
      } else if (contactsView.currentIndex == (contactsView.count - 1)) {
        console.log("Cannot move last element down")
      } else {
        var sourceIndex = contactsView.model.index(contactsView.currentIndex, 0)
        var destinationIndex = contactsView.model.index(contactsView.currentIndex + 1, 0)
        contactsView.model.moveRows(sourceIndex.parent, contactsView.currentIndex, 1, destinationIndex.parent, contactsView.currentIndex + 1)
      }
    }
  }

  Component {
    id: contactsDelegate

    Rectangle {
      id: delegateRect

      required property string firstName
      required property string lastName
      required property int age
      required property string phoneNumber
      required property int index
      property ItemView listView: ListView.view

      height: 65
      width: parent ? parent.width : 0
      border.color: "black"

      Text {
        anchors.left: parent.left
        anchors.leftMargin: 5
        text: qsTr("Name: %1 %2\nAge: %3\nPhone: %4").arg(delegateRect.firstName).arg(delegateRect.lastName).arg(delegateRect.age).arg(delegateRect.phoneNumber)
      }

      MouseArea {
        anchors.fill: parent
        hoverEnabled: true

        onReleased: {
          delegateRect.listView.currentIndex = delegateRect.index
          delegateRect.color = "white"
        }

        onPressed: {
          delegateRect.color = "gray"
        }

        onEntered: {
          delegateRect.color = "lightgray"
        }

        onExited: {
          delegateRect.color = "white"
        }
      }

      Keys.onTabPressed: function () {
        if (contactsView.currentIndex < 0) {
          console.log("Must select an element to insert a new entry")
        } else {
          var index = contactsView.model.index(contactsView.currentIndex, 0)
          contactsView.model.insertRows(listView.currentIndex, 1, index.parent)
          contactsView.model.setData(index, "%1, %2, %3, %4".arg(delegateRect.firstName).arg(delegateRect.lastName).arg(delegateRect.age).arg(delegateRect.phoneNumber))
        }
      }
    }
  }

  Component {
    id: contactsHeader

    Rectangle {
      id: headerRect

      height: 35
      width: parent.width
      border.color: "black"
      color: "mistyrose"

      Text {
        anchors.centerIn: parent
        text: qsTr("Contacts List")
        font.pointSize: 18
      }
    }
  }

  Component {
    id: contactsFooter

    Rectangle {
      id: footerRect

      height: 35
      width: parent.width
      border.color: "black"
      color: "mistyrose"
    }
  }

  Component {
    id: contactsHighlight

    Rectangle {
      id: highlightRect

      border.color: "black"
      color: "yellow"
      opacity: 0.15
      z: contactsView.z + 2
    }
  }

  Component {
    id: contactsSection

    Rectangle {
      id: sectionRect

      required property string section

      height: 35
      width: parent.width
      border.color: "black"
      color: "lightblue"

      Text {
        anchors.centerIn: parent
        text: qsTr(sectionRect.section + " Family")
        font.bold: true
        font.pointSize: 12
      }
    }
  }

  Transition {
    id: displacedTransition

    NumberAnimation {
      properties: "x,y"
      duration: 300
    }
  }

  Transition {
    id: addTransition

    NumberAnimation {
      property: "opacity"
      from: 0.0
      to: 1.0
      duration: 300
    }

    NumberAnimation {
      property: "scale"
      from: 0.0
      to: 1.0
      duration: 300
    }
  }

  Transition {
    id: moveTransition

    NumberAnimation {
      properties: "x,y"
      duration: 300
    }
  }

  Transition {
    id: removeTransition

    NumberAnimation {
      property: "opacity"
      from: 1.0
      to: 0.0
      duration: 300
    }

    NumberAnimation {
      property: "scale"
      from: 1.0
      to: 0.0
      duration: 300
    }
  }
}
