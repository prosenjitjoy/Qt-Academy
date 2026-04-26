#include "point2d.h"

Point2D::Point2D(float coord1, float coord2, CoordinateSystem system) {
  if (system == CoordinateSystem::Cartesian) {
    setCoordinate1(coord1);
    setCoordinate2(coord2);
  } else {
    setCoordinate1(coord1 * cos(coord2));
    setCoordinate2(coord1 * sin(coord2));
  }
}

float Point2D::coordinate1() const { return m_coordinate1; }

void Point2D::setCoordinate1(float newCoordinate1) { m_coordinate1 = newCoordinate1; }

float Point2D::coordinate2() const { return m_coordinate2; }

void Point2D::setCoordinate2(float newCoordinate2) { m_coordinate2 = newCoordinate2; }

QString Point2D::positionInfo(CoordinateSystem system) {
  switch (system) {
    case Cartesian:
      return QString("Cartesian coordinate 1 = %1, Cartesian coordinate 2 = %2")
          .arg(m_coordinate1)
          .arg(m_coordinate2);
    case Polar:
      return QString("Polar coordinate 1 = %1, Polar coordinate 2 = %2")
          .arg(sqrt((m_coordinate1 * m_coordinate1) + (m_coordinate2 * m_coordinate2)))
          .arg(atan2(m_coordinate2, m_coordinate1));
    default:
      return QString("Invalid coordinate system");
  }
}