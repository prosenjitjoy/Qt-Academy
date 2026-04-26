#include "globals.h"

Globals::Globals(QObject* parent) : QObject{parent} {
  qInfo() << this << "created";
}

int Globals::num() const {
  return m_num;
}

void Globals::setNum(int newNum) {
  if (m_num == newNum) {
    return;
  }
  m_num = newNum;
  emit numChanged();
}

void Globals::generateNumber() {
  m_num = QRandomGenerator::global()->bounded(1, 10);
  emit numChanged();
}