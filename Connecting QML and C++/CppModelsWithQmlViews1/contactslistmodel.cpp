#include "contactslistmodel.h"

ContactsListModel::ContactsListModel(QObject* parent) : QAbstractListModel{parent} {
  firstNames = {"John", "Jane", "George", "Lily", "Sarah", "Bob", "Julia", "Jose", "Joe"};
  lastNames = {"Doe", "Doe", "Doe", "Doe", "Smith", "Smith", "Smith", "Wolf", "Wolf"};
  ages = {49, 48, 12, 10, 14, 45, 51, 38, 35};
  phoneNumbers = {"111-111-1111", "222-222-2222", "333-333-3333", "444-444-4444", "555-555-5555",
                  "666-666-6666", "777-777-7777", "888-888-8888", "999-999-9999"};
}

int ContactsListModel::rowCount(const QModelIndex& parent) const {
  if (parent.isValid()) {
    return 0;
  }

  return firstNames.length();
}

QVariant ContactsListModel::data(const QModelIndex& index, int role) const {
  if (!index.isValid()) {
    return QVariant();
  }

  if (!checkIndex(index, CheckIndexOption::IndexIsValid)) {
    return QVariant();
  }

  int row = index.row();

  switch (role) {
    case FirstName:
      return firstNames[row];
    case LastName:
      return lastNames[row];
    case Age:
      return ages[row];
    case PhoneNumber:
      return phoneNumbers[row];
  }

  return QVariant();
}

QHash<int, QByteArray> ContactsListModel::roleNames() const {
  QHash<int, QByteArray> mapping{
      {ContactsRoles::FirstName, "firstName"},
      {ContactsRoles::LastName, "lastName"},
      {ContactsRoles::Age, "age"},
      {ContactsRoles::PhoneNumber, "phoneNumber"},
  };

  return mapping;
}

bool ContactsListModel::setData(const QModelIndex& index, const QVariant& value, int role) {
  if (role != Qt::EditRole || value.toString().isEmpty()) {
    return false;
  }

  const int row = index.row();

  QStringList contact = value.toString().split(", ");

  firstNames[row] = contact[0];
  lastNames[row] = contact[1];
  ages[row] = contact[2].toInt();
  phoneNumbers[row] = contact[3];

  emit dataChanged(index, index);

  return true;
}

Qt::ItemFlags ContactsListModel::flags(const QModelIndex& index) const {
  return QAbstractListModel::flags(index) | Qt::ItemIsEditable;
}

bool ContactsListModel::removeRows(int row, int count,
                                   const QModelIndex& parent) {
  beginRemoveRows(parent, row, row + count - 1);
  firstNames.removeAt(row);
  lastNames.removeAt(row);
  ages.removeAt(row);
  phoneNumbers.removeAt(row);
  endRemoveRows();

  return true;
}

bool ContactsListModel::moveRows(const QModelIndex& sourceParent, int sourceRow,
                                 int count,
                                 const QModelIndex& destinationParent,
                                 int destinationChild) {
  int newDestination = destinationChild;
  if (sourceRow < destinationChild) {
    newDestination++;
  }

  beginMoveRows(sourceParent, sourceRow, sourceRow, destinationParent,
                newDestination);
  firstNames.move(sourceRow, destinationChild);
  lastNames.move(sourceRow, destinationChild);
  ages.move(sourceRow, destinationChild);
  phoneNumbers.move(sourceRow, destinationChild);
  endMoveRows();

  return true;
}

bool ContactsListModel::insertRows(int row, int count,
                                   const QModelIndex& parent) {
  beginInsertRows(parent, row, row + count - 1);
  firstNames.insert(row, "");
  lastNames.insert(row, "");
  ages.insert(row, 0);
  phoneNumbers.insert(row, "");
  endInsertRows();

  return true;
}
