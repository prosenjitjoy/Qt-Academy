#include <QDebug>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "lumbersawcontroller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    LumberSawController controller;

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/QmlCppExample/main.qml"_qs);

    controller.setSawSpeed(5);
    controller.setObjectName("saw 1");
    controller.setProperty("model", "Cutter 2000 MX");

    qDebug() << "sawSpeed: " << controller.property("sawSpeed");
    qDebug() << "objectName: " << controller.property("objectName");
    qDebug() << "model: " << controller.property("model");

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
      &app, [url](QObject *obj, const QUrl &objUrl){
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
