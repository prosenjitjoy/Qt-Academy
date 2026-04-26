#ifndef INTERFACESHAPE_H
#define INTERFACESHAPE_H

#include <QQmlEngine>
#include <QQuickPaintedItem>

class InterfaceShape : public QQuickPaintedItem {
  Q_OBJECT
  QML_INTERFACE

 public:
  virtual void shapeInfo() = 0;
  virtual void paint(QPainter* painter) = 0;
};

Q_DECLARE_INTERFACE(InterfaceShape, "org.shape.InterfaceShape")
#endif  // INTERFACESHAPE_H
