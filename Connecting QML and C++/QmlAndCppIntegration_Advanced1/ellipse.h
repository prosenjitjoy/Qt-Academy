#ifndef ELLIPSE_H
#define ELLIPSE_H

#include <QPainter>
#include <QQmlEngine>

#include "interfaceshape.h"

class Ellipse : public InterfaceShape {
  Q_OBJECT
  // QML_ELEMENT
  QML_IMPLEMENTS_INTERFACES(InterfaceShape)
  Q_PROPERTY(float border READ border WRITE setBorder NOTIFY borderChanged FINAL)
  Q_PROPERTY(QColor color MEMBER m_color NOTIFY colorChanged FINAL)

 public:
  Ellipse();
  float border() const;
  void setBorder(float newBorder);
  Q_INVOKABLE void setProperties(float newBorder, QColor newColor);
  void paint(QPainter* painter);
  Q_INVOKABLE void shapeInfo();

 signals:
  void borderChanged();
  void colorChanged();

 public slots:
  void ellipseInfo();
  void onPropertyChanged();

 private:
  float m_border;
  QColor m_color;
};

#endif  // ELLIPSE_H
