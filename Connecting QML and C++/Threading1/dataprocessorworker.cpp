#include "dataprocessorworker.h"

#include <QDebug>
#include <QThread>

DataProcessorWorker::DataProcessorWorker(QObject* parent) : QObject{parent} {
  static int i = 1;

  QObject::setObjectName("DataProcessorWorker #" + QString::number(i++));

  qInfo() << QObject::objectName() << " created";
}

DataProcessorWorker::~DataProcessorWorker() { qInfo() << QObject::objectName() << " destroyed"; }

void DataProcessorWorker::doHeavyWork() {
  qInfo() << "Worker started in thread: " << QThread::currentThread()->objectName() << " using object " << QObject::objectName();

  const int STEPS_NUMBER = 50;

  for (int i = 0; i <= STEPS_NUMBER; i++) {
    if (QThread::currentThread()->isInterruptionRequested()) {
      qInfo() << "Work interrupted at step: " << i << " in thread " << QThread::currentThread()->objectName();
      return;
    }

    QThread::sleep(std::chrono::milliseconds{250});
    emit progressUpdate(i, STEPS_NUMBER);
  }

  qInfo() << "Worker ended in thread: " << QThread::currentThread()->objectName() << " using object " << QObject::objectName();

  emit workFinished();
}
