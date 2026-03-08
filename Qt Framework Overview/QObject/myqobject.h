#ifndef MYQOBJECT_H
#define MYQOBJECT_H

#include <QObject>

class MyQObject : public QObject {
  Q_OBJECT
  Q_PROPERTY(QString information MEMBER m_information NOTIFY informationChanged)
 public:
  explicit MyQObject(QObject* parent = nullptr);

  QString getInformation() const;

 private:
  QString m_information;

 signals:
  void mySignal(QString message);
  void informationChanged();

 public slots:
  void mySlot(QString message);
  void onInformationChanged();
};

#endif // MYQOBJECT_H
