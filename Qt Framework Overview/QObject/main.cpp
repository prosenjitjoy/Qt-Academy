#include <QCoreApplication>
#include <QDebug>
#include <QMetaObject>
#include <QMetaProperty>

#include "myqobject.h"
#include "myqobject1.h"
#include "myqobject2.h"
#include "myqobject3.h"

int main(int argc, char* argv[]) {
  QCoreApplication a(argc, argv);

  MyQObject object1;
  MyQObject object2;

  QObject::connect(&object1, &MyQObject::mySignal, &object2,
                   &MyQObject::mySlot);

  emit object1.mySignal("Hello World!");

  std::unique_ptr<MyQObject1> myQObject1 = std::make_unique<MyQObject1>();
  std::unique_ptr<MyQObject2> myQObject2 = std::make_unique<MyQObject2>();

  QObject::connect(myQObject1.get(), &MyQObject1::mySignal, myQObject1.get(),
                   &MyQObject1::mySlot1);
  QObject::connect(myQObject1.get(), &MyQObject1::mySignal, myQObject2.get(),
                   &MyQObject2::mySlot2);

  emit myQObject1->mySignal("Hello World");

  QObject::disconnect(myQObject1.get(), &MyQObject1::mySignal, myQObject1.get(),
                      &MyQObject1::mySlot1);
  QObject::disconnect(myQObject1.get(), &MyQObject1::mySignal, myQObject2.get(),
                      &MyQObject2::mySlot2);

  emit myQObject1->mySignal("Hello World Again");

  MyQObject* object = new MyQObject(&a);

  QObject::connect(object, &MyQObject::informationChanged, object,
                   &MyQObject::onInformationChanged);

  object->setProperty("information", "Hello World");

  // qDebug() << "Information property: " << object->property("information");
  qInfo() << "Information property: " << object->getInformation();

  MyQObject1 myQObject;

  myQObject.setValue(50);

  qDebug() << "Value property: " << myQObject.getValue();

  qInfo() << "Class name: " << myQObject.metaObject()->className();
  qInfo() << "Superclass name: "
          << myQObject.metaObject()->superClass()->className();
  qInfo() << "Property count: " << myQObject.metaObject()->propertyCount();
  qInfo() << "Method count: " << myQObject.metaObject()->methodCount();
  qInfo() << "Enumerator count: " << myQObject.metaObject()->enumeratorCount();

  for (int i = 0; i < myQObject.metaObject()->propertyCount(); i++) {
    qInfo() << "Property" << i << ": "
            << myQObject.metaObject()->property(i).name();
  }

  for (int i = 0; i < myQObject.metaObject()->methodCount(); i++) {
    qInfo() << "Method" << i << ": "
            << myQObject.metaObject()->method(i).name();
  }

  for (int i = 0; i < myQObject.metaObject()->enumeratorCount(); i++) {
    qInfo() << "Enumerator" << i << ": "
            << myQObject.metaObject()->enumerator(i).name();
  }

  std::unique_ptr<MyQObject3> grandparent =
      std::make_unique<MyQObject3>("Grand parent");
  std::unique_ptr<MyQObject3> parent =
      std::make_unique<MyQObject3>("Parent", grandparent.get());

  std::unique_ptr<MyQObject3> child1 =
      std::make_unique<MyQObject3>("Child 1", parent.get());
  std::unique_ptr<MyQObject3> child2 =
      std::make_unique<MyQObject3>("Child 2", parent.get());
  std::unique_ptr<MyQObject3> child3 =
      std::make_unique<MyQObject3>("Child 3", parent.get());

  delete grandparent.get();

  return a.exec();
}
