#ifndef MYQOBJECT2_H
#define MYQOBJECT2_H

#include <QObject>

class MyQObject2 : public QObject {
  Q_OBJECT
 public:
  explicit MyQObject2(QObject* parent = nullptr);

 signals:

 public slots:
  void mySlot2(QString message);
};

#endif  // MYQOBJECT2_H
