#include "contactsfilterproxymodel.h"

#include "contactslistmodel.h"

ContactsFilterProxyModel::ContactsFilterProxyModel(QObject* parent) : QSortFilterProxyModel{parent} {}

QString ContactsFilterProxyModel::lastName() const { return m_lastName; }

void ContactsFilterProxyModel::setLastName(const QString& newLastName) {
  if (m_lastName == newLastName) {
    return;
  }

  m_lastName = newLastName;

  emit lastNameChanged();

  beginFilterChange();
  endFilterChange();
}

bool ContactsFilterProxyModel::filterAcceptsRow(int source_row, const QModelIndex& source_parent) const {
  const QModelIndex index = sourceModel()->index(source_row, 0, source_parent);
  const QString lastName = index.data(ContactsListModel::ContactsRoles::LastName).toString();

  return (lastName == m_lastName);
}
