#ifndef ELLIPSE_H
#define ELLIPSE_H

#include <QPainter>
#include <QQmlEngine>
#include <QQuickPaintedItem>

class Ellipse : public QQuickPaintedItem {
  Q_OBJECT
  QML_ELEMENT

  Q_PROPERTY(float border READ border WRITE setBorder NOTIFY borderChanged FINAL)
  Q_PROPERTY(QColor color MEMBER m_color NOTIFY colorChanged FINAL)

 public:
  Ellipse();
  float border() const;
  void setBorder(float newBorder);
  Q_INVOKABLE void setProperties(float newBorder, QColor newColor);
  void paint(QPainter* painter);

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
