#ifndef EMENUCORE_GLOBAL_H
#define EMENUCORE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(EMENUCORE_LIBRARY)
#  define EMENUCORE_EXPORT Q_DECL_EXPORT
#else
#  define EMENUCORE_EXPORT Q_DECL_IMPORT
#endif

#endif // EMENUCORE_GLOBAL_H
