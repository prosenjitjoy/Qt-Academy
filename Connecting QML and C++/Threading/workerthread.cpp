#include "workerthread.h"

#include <QDebug>
#include <cmath>

void WorkerThread::run() { doHeavyWork(); }

void WorkerThread::doHeavyWork() {
  for (int i = 0; i <= 500000; i++) {
    volatile double result = 0;

    for (int j = 0; j < 10000; j++) {
      result += sqrt(i * j);
    }

    if (i % 100000 == 0) {
      qInfo() << "WorkerThread iteration " << i << " on thread" << QThread::currentThread()->objectName();
    }
  }
}
