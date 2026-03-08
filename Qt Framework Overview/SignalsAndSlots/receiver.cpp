#include "receiver.h"

#include <QDebug>

Receiver::Receiver(QObject* parent) : QObject{parent} {}

void Receiver::on_eventChanged(QString message) {
  qInfo() << "Executing slot inside" << this;
  qInfo() << "Message received:" << message;
}
