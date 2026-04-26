#ifndef NAMEDOBJECT_H
#define NAMEDOBJECT_H

#include <QObject>
#include <QQmlEngine>

class NamedObject : public QObject {
  Q_OBJECT
  Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged FINAL)

 public:
  explicit NamedObject(QObject* parent = nullptr);

  QString name() const;
  void setName(const QString& newName);

 signals:
  void nameChanged();

 private:
  QString m_name;
};

#endif  // NAMEDOBJECT_H
