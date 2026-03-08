#include "myclass.h"

#include <QDebug>
#include <QThread>

MyClass::MyClass(const QString& name, QObject* parent) : QObject{parent} {
  setObjectName(name);
  qInfo() << this << "created on" << QThread::currentThread();
}

void MyClass::on_eventChanged() {
  qInfo() << "Executing slot onEvent() on" << QThread::currentThread();
}
