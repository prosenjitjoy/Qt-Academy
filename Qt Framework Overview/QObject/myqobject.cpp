#include "myqobject.h"

#include <QDebug>

MyQObject::MyQObject(QObject* parent) : QObject{parent} {}

QString MyQObject::getInformation() const { return m_information; }

void MyQObject::mySlot(QString message) { qDebug() << message; }

void MyQObject::onInformationChanged() {
  qDebug() << "information value changed" << m_information;
}
