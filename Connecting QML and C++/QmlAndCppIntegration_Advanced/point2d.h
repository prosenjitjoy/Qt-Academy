#ifndef POINT2D_H
#define POINT2D_H

#include <QCoreApplication>
#include <QQmlApplicationEngine>

class Point2D {
  Q_GADGET
  QML_VALUE_TYPE(point2D)
  QML_CONSTRUCTIBLE_VALUE
  Q_PROPERTY(float coordinate1 READ coordinate1 WRITE setCoordinate1 FINAL)
  Q_PROPERTY(float coordinate2 READ coordinate2 WRITE setCoordinate2 FINAL)

  Q_PROPERTY(CoordinateSystem system READ coordinateSystem WRITE setCoordinateSystem FINAL)

 public:
  enum CoordinateSystem { Cartesian = 0, Polar };
  Q_ENUM(CoordinateSystem)

  // Point2D(float coord1 = 0.0, float coord2 = 0.0,
  //         CoordinateSystem system = CoordinateSystem::Cartesian);

  Q_INVOKABLE Point2D(CoordinateSystem system = CoordinateSystem::Cartesian);

  float coordinate1() const;
  void setCoordinate1(float newCoordinate1);

  float coordinate2() const;
  void setCoordinate2(float newCoordinate2);

  Q_INVOKABLE QString positionInfo(CoordinateSystem system = CoordinateSystem::Cartesian);

  CoordinateSystem coordinateSystem() const;
  void setCoordinateSystem(CoordinateSystem newSytem);

 private:
  float m_coordinate1;
  float m_coordinate2;
  CoordinateSystem m_sytem;
};

#endif  // POINT2D_H
