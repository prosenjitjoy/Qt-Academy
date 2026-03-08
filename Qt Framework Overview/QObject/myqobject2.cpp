#include "myqobject2.h"

#include <QDebug>

MyQObject2::MyQObject2(QObject* parent) : QObject{parent} {}

void MyQObject2::mySlot2(QString message) {
  qDebug() << "Message received in mySlot2: " << message;
}
