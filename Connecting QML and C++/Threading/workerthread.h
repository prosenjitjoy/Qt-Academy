#ifndef WORKERTHREAD_H
#define WORKERTHREAD_H

#include <QThread>

class WorkerThread : public QThread {
 public:
  WorkerThread() = default;

 protected:
  void run() override;

 private:
  void doHeavyWork();
};

#endif  // WORKERTHREAD_H
