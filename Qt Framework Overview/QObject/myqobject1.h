#ifndef MYQOBJECT1_H
#define MYQOBJECT1_H

#include <QObject>

class MyQObject1 : public QObject {
  Q_OBJECT
  Q_PROPERTY(int value READ getValue WRITE setValue NOTIFY valueChanged FINAL)
 public:
  explicit MyQObject1(QObject* parent = nullptr);

  int getValue() const;
  void setValue(int newValue);

  enum MyEnum {
    Value1,
    Value2,
    Value3,
  };
  Q_ENUM(MyEnum)

 signals:
  void mySignal(QString message);
  void valueChanged();

 public slots:
  void mySlot1(QString message);
  void onValueChanged();

 private:
  int m_value;
};

#endif  // MYQOBJECT1_H
