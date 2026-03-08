#include <QCoreApplication>
#include <QDebug>
#include <QThread>

#include "myclass.h"
#include "receiver.h"
#include "sender.h"

int main(int argc, char* argv[]) {
  QCoreApplication app(argc, argv);

  Sender sender;
  Receiver receiver;

  QObject::connect(&sender, &Sender::eventChanged, &receiver,
                   &Receiver::on_eventChanged);

  emit sender.eventChanged("Hello World!");

  QThread::currentThread()->setObjectName("Main Thread");

  MyClass* source = new MyClass("source");
  MyClass* destination = new MyClass("destination");

  QThread thread;
  QObject::connect(&thread, &QThread::finished, destination,
                   &QObject::deleteLater);
  QObject::connect(&thread, &QThread::finished, source, &QObject::deleteLater);

  thread.start();
  thread.setObjectName("Seperate Thread");
  destination->moveToThread(&thread);

  QObject::connect(source, &MyClass::eventChanged, destination,
                   &MyClass::on_eventChanged,
                   static_cast<Qt::ConnectionType>(Qt::QueuedConnection |
                                                   Qt::UniqueConnection));
  QObject::connect(source, &MyClass::eventChanged, destination,
                   &MyClass::on_eventChanged,
                   static_cast<Qt::ConnectionType>(Qt::QueuedConnection |
                                                   Qt::UniqueConnection));

  qInfo() << "\nEmitting signal event() from" << QThread::currentThread();
  emit source->eventChanged();

  thread.wait(3000);
  thread.quit();

  return app.exec();
}
