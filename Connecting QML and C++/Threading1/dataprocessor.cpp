#include "dataprocessor.h"

DataProcessor::DataProcessor(QObject* parent) : QObject{parent} {
  m_dataProcessorWorker = std::make_unique<DataProcessorWorker>();
  m_dataProcessorWorker->moveToThread(&m_workerThread);

  connect(&m_workerThread, &QThread::finished, m_dataProcessorWorker.get(), &QObject::deleteLater);
  connect(this, &DataProcessor::startRequested, m_dataProcessorWorker.get(), &DataProcessorWorker::doHeavyWork, Qt::QueuedConnection);

  connect(m_dataProcessorWorker.get(), &DataProcessorWorker::progressUpdate, this, &DataProcessor::onProgressUpdate);
  connect(m_dataProcessorWorker.get(), &DataProcessorWorker::workFinished, this, &DataProcessor::onWorkFinished);

  m_workerThread.start();
}

DataProcessor::~DataProcessor() {
  qInfo() << "Destructor of DataProcessor associated with " << m_itemName;

  m_workerThread.requestInterruption();
  m_workerThread.quit();
  m_workerThread.wait();
}

void DataProcessor::startProcessing() {
  qInfo() << "User started processing for item with name " << m_itemName;

  m_workerThread.setObjectName(m_itemName + " thread");
  emit startRequested();
}

void DataProcessor::onProgressUpdate(int current, int total) { emit progressUpdated(current, total); }

void DataProcessor::onWorkFinished() {
  qInfo() << "DataProcessor with name " << m_itemName << " received workFinished() signal from the thread " << m_workerThread.objectName();

  emit workFinished();
}
