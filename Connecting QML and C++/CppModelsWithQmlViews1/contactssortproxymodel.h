#ifndef CONTACTSSORTPROXYMODEL_H
#define CONTACTSSORTPROXYMODEL_H

#include <QQmlEngine>
#include <QSortFilterProxyModel>

class ContactsSortProxyModel : public QSortFilterProxyModel {
  Q_OBJECT
  QML_ELEMENT
  QML_UNCREATABLE("ContactsFilterProxyModel must be instantiated in C++")

 public:
  explicit ContactsSortProxyModel(QObject* parent = nullptr);

 protected:
  bool lessThan(const QModelIndex& source_left, const QModelIndex& source_right) const override;
};

#endif  // CONTACTSSORTPROXYMODEL_H
