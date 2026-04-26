#ifndef DATAPROCESSORWORKER_H
#define DATAPROCESSORWORKER_H

#include <QObject>

class DataProcessorWorker : public QObject {
  Q_OBJECT

 public:
  explicit DataProcessorWorker(QObject* parent = nullptr);
  ~DataProcessorWorker();

 signals:
  void progressUpdate(int current, int total);
  void workFinished();

 public slots:
  void doHeavyWork();
};

#endif  // DATAPROCESSORWORKER_H
