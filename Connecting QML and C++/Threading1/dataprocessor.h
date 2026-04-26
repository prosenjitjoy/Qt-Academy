#ifndef DATAPROCESSOR_H
#define DATAPROCESSOR_H

#include <QObject>
#include <QQmlEngine>
#include <QThread>

#include "dataprocessorworker.h"

class DataProcessor : public QObject {
  Q_OBJECT
  QML_ELEMENT

  Q_PROPERTY(QString itemName MEMBER m_itemName)

 public:
  explicit DataProcessor(QObject* parent = nullptr);
  ~DataProcessor();

  Q_INVOKABLE void startProcessing();

 signals:
  void startRequested();
  void progressUpdated(int current, int total);
  void workFinished();

 private slots:
  void onProgressUpdate(int current, int total);
  void onWorkFinished();

 private:
  QThread m_workerThread;
  std::unique_ptr<DataProcessorWorker> m_dataProcessorWorker;
  QString m_itemName;
};

#endif  // DATAPROCESSOR_H
