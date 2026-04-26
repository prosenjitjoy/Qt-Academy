#ifndef FOREIGN_H
#define FOREIGN_H

#include <QtQmlIntegration/qqmlintegration.h>

#include "ThirdPartyLibrary/point2d.h"

struct Foreign {
  Q_GADGET
  QML_FOREIGN(Point2D)
  QML_VALUE_TYPE(point2D)
};

#endif  // FOREIGN_H
