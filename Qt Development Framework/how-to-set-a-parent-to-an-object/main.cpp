#include <QCoreApplication>
#include "customclass.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QObject *grandparent = new QObject();
    grandparent->setObjectName("Grandparent");

    CustomClass *parent = new CustomClass(grandparent);
    parent->setObjectName("Parent");

    CustomClass *child1 = new CustomClass(parent);
    child1->setObjectName("Child 1");

    CustomClass *child2 = new CustomClass(parent);
    child2->setObjectName("Child 2");

    CustomClass *child3 = new CustomClass();
    child3->setObjectName("Child 3");
    child3->setParent(parent);

    grandparent->dumpObjectTree();
    delete grandparent;

    return a.exec();
}
