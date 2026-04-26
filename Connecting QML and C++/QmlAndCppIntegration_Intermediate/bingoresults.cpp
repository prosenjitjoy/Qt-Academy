#include "bingoresults.h"

BingoResults::BingoResults(QObject* parent) : Counters{parent} {}

QString BingoResults::message() const { return m_message; }

void BingoResults::setMessage(const QString& newMessage) {
  if (m_message == newMessage) {
    return;
  }
  m_message = newMessage;
  emit messageChanged();
}

void BingoResults::calculate(int matchCounter, int turnsRemaining, int listSize) {
  if (matchCounter >= listSize) {
    m_message = "You win!";
  } else if (turnsRemaining <= 1) {
    m_message = "You lose.";
  }
}
