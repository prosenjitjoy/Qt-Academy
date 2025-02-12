#include "lumbersawcontroller.h"

LumberSawController::LumberSawController(QObject *parent) : QObject{parent} {
}

bool LumberSawController::isWorking() const {
  return m_isWorking;
}

void LumberSawController::setIsWorking(bool newIsWorking) {
  if (m_isWorking == newIsWorking)
    return;
  m_isWorking = newIsWorking;
  emit isWorkingChanged();
}

double LumberSawController::sawSpeed() const {
  return m_sawSpeed;
}

void LumberSawController::setSawSpeed(double newSawSpeed) {
  if (m_sawSpeed == newSawSpeed)
    return;
  m_sawSpeed = newSawSpeed;
  emit sawSpeedChanged();
}

void LumberSawController::start() {
  setIsWorking(true);
}

void LumberSawController::stop() {
  setIsWorking(false);
}
