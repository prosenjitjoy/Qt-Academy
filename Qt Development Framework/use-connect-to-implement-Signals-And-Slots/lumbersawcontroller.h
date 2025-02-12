#ifndef LUMBERSAWCONTROLLER_H
#define LUMBERSAWCONTROLLER_H

#include <qqml.h>

#include <QObject>
#include <QTimer>

class LumberSawController : public QObject {
    Q_OBJECT
    Q_PROPERTY(Status status READ status WRITE setStatus NOTIFY
                   statusChanged FINAL)
    Q_PROPERTY(int sawSpeed READ sawSpeed WRITE setSawSpeed NOTIFY
                   sawSpeedChanged)
    QML_ELEMENT

  public:
    explicit LumberSawController(QObject *parent = nullptr);

    enum Status { IdleStatus = 0, WorkingStatus, ErrorStatus };
    Q_ENUM(Status)

    int sawSpeed() const;
    void setSawSpeed(int newSawSpeed);

    Status status() const;

  public slots:
    void start();
    void stop();

  signals:
    void sawSpeedChanged();
    void statusChanged();

  private slots:
    void onTimerTimeout();

  private:
    int m_sawSpeed = 1;
    Status m_status = Status::IdleStatus;
    QTimer m_timer;

    void setStatus(Status newStatus);
};

#endif // LUMBERSAWCONTROLLER_H
