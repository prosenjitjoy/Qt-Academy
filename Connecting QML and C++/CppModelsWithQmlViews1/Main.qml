pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls
import CppModelsWithQmlViews1

ApplicationWindow {
  id: window

  width: 1280
  height: 720
  visible: true
  title: qsTr("Contacts List Proxy Models")

  required property ContactsListModel contactsListModel
  required property ContactsFilterProxyModel filterModel
  required property ContactsSortProxyModel sortModel

  header: TextField {
    id: filterText

    placeholderText: qsTr("Enter a contacts last name")
    text: window.filterModel.lastName
    font.pointSize: 18

    onEditingFinished: function () {
      focus = false
      window.filterModel.lastName = text
    }

    Keys.onEscapePressed: function () {
      focus = false
    }
  }

  Row {
    anchors.fill: parent

    ContactsListView {
      id: contactsListView

      contactsModel: window.contactsListModel
      viewInteraction: filterText.focus ? false : true
      title: qsTr("Contacts List")
    }

    ContactsListView {
      contactsModel: window.filterModel
      viewInteraction: false
      title: qsTr("Filtered By Last Name")
    }

    ContactsListView {
      contactsModel: window.sortModel
      viewInteraction: false
      title: qsTr("Sorted By Age")
    }
  }
}
