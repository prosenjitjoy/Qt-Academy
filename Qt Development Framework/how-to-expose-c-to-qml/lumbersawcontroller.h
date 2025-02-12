#ifndef LUMBERSAWCONTROLLER_H
#define LUMBERSAWCONTROLLER_H

#include <qqmlintegration.h>

#include <QObject>

class LumberSawController : public QObject {
  Q_OBJECT
  QML_ELEMENT
  Q_PROPERTY(bool isWorking READ isWorking NOTIFY isWorkingChanged FINAL)
  Q_PROPERTY(double sawSpeed READ sawSpeed WRITE setSawSpeed NOTIFY sawSpeedChanged FINAL)

 public:
  explicit LumberSawController(QObject *parent = nullptr);

  bool isWorking() const;
  double sawSpeed() const;
  void setSawSpeed(double newSawSpeed);

 public slots:
  void start();
  void stop();

 signals:
  void isWorkingChanged();
  void sawSpeedChanged();

 private:
  bool m_isWorking = false;
  double m_sawSpeed = 1;
  void setIsWorking(bool newIsWorking);
};

#endif  // LUMBERSAWCONTROLLER_H
