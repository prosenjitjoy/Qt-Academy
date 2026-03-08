#ifndef MYCLASS_H
#define MYCLASS_H

#include <QObject>

class MyClass : public QObject {
  Q_OBJECT

 public:
  explicit MyClass(const QString& name, QObject* parent = nullptr);

 signals:
  void eventChanged();

 public slots:
  void on_eventChanged();
};

#endif  // MYCLASS_H
