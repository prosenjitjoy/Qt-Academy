import QtQuick

Item {
  QtObject {
    id: patron
    property string name: "Patron"
    property int age: 6
  }

  property QtObject cat: patron

  Component.onCompleted: {
    cat.name = "mafya"
    cat.age = 5

    console.log("Name:", patron.name, "Age:", patron.age)
  }
}
