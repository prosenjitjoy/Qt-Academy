#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "bingomodel.h"

int main(int argc, char* argv[]) {
  QGuiApplication app(argc, argv);

  QQmlApplicationEngine engine;

  QObject::connect(
      &engine, &QQmlApplicationEngine::objectCreationFailed, &app,
      []() { QCoreApplication::exit(-1); }, Qt::QueuedConnection);

  BingoModel bingoModel;

  // add list elements to bingoModel
  bingoModel.addListElement();
  bingoModel.addListElement();
  bingoModel.addListElement();
  bingoModel.addListElement();

  engine.setInitialProperties({{"bingoModel", QVariant::fromValue(&bingoModel)}});
  engine.loadFromModule("QmlAndCppIntegration_Intermediate", "Main");

  return QCoreApplication::exec();
}
