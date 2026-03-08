#include "myqobject1.h"

#include <QDebug>

MyQObject1::MyQObject1(QObject* parent) : QObject{parent} {
  connect(this, &MyQObject1::valueChanged, this, &MyQObject1::onValueChanged);
}

int MyQObject1::getValue() const { return m_value; }

void MyQObject1::setValue(int newValue) {
  m_value = newValue;
  emit valueChanged();
}

void MyQObject1::mySlot1(QString message) {
  qDebug() << "Message received in mySlot1: " << message;
}

void MyQObject1::onValueChanged() { qDebug() << "value changed: " << m_value; }
