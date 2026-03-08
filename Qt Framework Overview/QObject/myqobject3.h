#ifndef MYQOBJECT3_H
#define MYQOBJECT3_H

#include <QObject>

class MyQObject3 : public QObject {
  Q_OBJECT
 public:
  explicit MyQObject3(QString objectName, QObject* parent = nullptr);
  ~MyQObject3();

 signals:
};

#endif  // MYQOBJECT3_H
