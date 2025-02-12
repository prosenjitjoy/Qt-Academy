#include "customclass.h"
#include <QDebug>

CustomClass::CustomClass(QObject *parent)
    : QObject{parent}
{}

CustomClass::~CustomClass()
{
    qDebug() << objectName() << " deleted";
}
