#ifndef CONTACTSLISTMODEL_H
#define CONTACTSLISTMODEL_H

#include <QAbstractListModel>
#include <QQmlEngine>

class ContactsListModel : public QAbstractListModel {
  Q_OBJECT
  QML_ELEMENT

 public:
  ContactsListModel();

  enum ContactsRoles { FirstName = 0, LastName, Age, PhoneNumber };

  int rowCount(const QModelIndex& parent) const override;
  QVariant data(const QModelIndex& index, int role) const override;
  QHash<int, QByteArray> roleNames() const override;
  bool setData(const QModelIndex& index, const QVariant& value, int role) override;
  Qt::ItemFlags flags(const QModelIndex& index) const override;

  Q_INVOKABLE bool removeRows(int row, int count, const QModelIndex& parent) override;
  Q_INVOKABLE bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override;
  Q_INVOKABLE bool insertRows(int row, int count, const QModelIndex& parent) override;

 private:
  QStringList firstNames;
  QStringList lastNames;
  QList<int> ages;
  QStringList phoneNumbers;
};

#endif  // CONTACTSLISTMODEL_H
