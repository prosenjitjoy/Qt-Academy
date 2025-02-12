#include "lumbersawcontroller.h"

LumberSawController::LumberSawController(QObject *parent) : QObject{parent} {
    m_timer.setInterval(10000);
    connect(&m_timer, &QTimer::timeout, this,
            &LumberSawController::onTimerTimeout);
}

void LumberSawController::start() {
    setStatus(Status::WorkingStatus);
    m_timer.start();
}

void LumberSawController::stop() {
    setStatus(Status::IdleStatus);
    m_timer.stop();
}

void LumberSawController::onTimerTimeout() {
    qDebug() << "Error, stop the timer";
    setStatus(Status::ErrorStatus);
    m_timer.stop();
}

int LumberSawController::sawSpeed() const {
    return m_sawSpeed;
}

void LumberSawController::setSawSpeed(int newSawSpeed) {
    if (m_sawSpeed == newSawSpeed)
        return;
    m_sawSpeed = newSawSpeed;
    emit sawSpeedChanged();
}

LumberSawController::Status LumberSawController::status() const {
    return m_status;
}

void LumberSawController::setStatus(Status newStatus) {
    if (m_status == newStatus)
        return;
    m_status = newStatus;
    emit statusChanged();
}
