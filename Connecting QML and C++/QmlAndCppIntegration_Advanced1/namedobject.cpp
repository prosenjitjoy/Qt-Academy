#include "namedobject.h"

NamedObject::NamedObject(QObject* parent) : QObject{parent} {}

QString NamedObject::name() const { return m_name; }

void NamedObject::setName(const QString& newName) {
  if (m_name == newName) {
    return;
  }
  m_name = newName;
  emit nameChanged();
}
