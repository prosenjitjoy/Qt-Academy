#include "myqobject3.h"

#include <QDebug>

MyQObject3::MyQObject3(QString objectName, QObject* parent) : QObject{parent} {
  this->setObjectName(objectName);
  qInfo() << this->objectName() << "created";
}

MyQObject3::~MyQObject3() { qInfo() << this->objectName() << "deleted"; }
