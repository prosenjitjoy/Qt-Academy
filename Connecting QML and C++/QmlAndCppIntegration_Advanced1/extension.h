#ifndef EXTENSION_H
#define EXTENSION_H

#include "ellipse.h"
#include "namedobject.h"

struct Extension : public Ellipse {
  Q_OBJECT
  QML_NAMED_ELEMENT(EllipseExtended)
  QML_EXTENDED(NamedObject)
};

#endif  // EXTENSION_H
