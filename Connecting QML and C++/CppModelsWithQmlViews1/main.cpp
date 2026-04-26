#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "contactsfilterproxymodel.h"
#include "contactslistmodel.h"
#include "contactssortproxymodel.h"

int main(int argc, char* argv[]) {
  QGuiApplication app(argc, argv);

  ContactsListModel contactsListModel;
  ContactsFilterProxyModel filterModel;
  ContactsSortProxyModel sortModel;

  filterModel.setSourceModel(&contactsListModel);
  sortModel.setSourceModel(&filterModel);

  QQmlApplicationEngine engine;

  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
      []() { QCoreApplication::exit(-1); }, Qt::QueuedConnection);

  engine.setInitialProperties({
      {"contactsListModel", QVariant::fromValue(&contactsListModel)},
      {"filterModel", QVariant::fromValue(&filterModel)},
      {"sortModel", QVariant::fromValue(&sortModel)},
  });

  engine.loadFromModule("CppModelsWithQmlViews1", "Main");

  return QCoreApplication::exec();
}
