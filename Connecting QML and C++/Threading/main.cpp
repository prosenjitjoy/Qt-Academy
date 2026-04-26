#include <QCoreApplication>
#include <QDebug>

#include "workerthread.h"

int main(int argc, char* argv[]) {
  QCoreApplication app(argc, argv);

  std::unique_ptr<WorkerThread> thread = std::make_unique<WorkerThread>();

  thread->setObjectName("Worker Thread");

  QObject::connect(thread.get(), &QThread::finished, &app, []() { qInfo() << "Work is finished"; });

  QThread::currentThread()->setObjectName("Main Thread");

  qInfo() << "Main thread name: " << QThread::currentThread()->objectName();
  qInfo() << thread->objectName() << " is running: " << thread->isRunning();

  thread->start();

  qInfo() << thread->objectName() << " is running: " << thread->isRunning();
  qInfo() << thread->objectName() << " wait for finish";

  thread->wait();

  qInfo() << thread->objectName() << " thread work is finished";
  qInfo() << thread->objectName() << " is running: " << thread->isRunning();
  qInfo() << thread->objectName() << " is finished: " << thread->isFinished();

  return app.exec();
}
