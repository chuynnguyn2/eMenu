#ifndef DRINK_H
#define DRINK_H

#include "Emenu-core_global.h"
#include <QJsonObject>

class EMENUCORE_EXPORT Drink
{
public:
    explicit Drink(const QString& name = "");

    QString getName()const;
    QString getUrl()const;
    QString getDescription()const;
    int getId()const;

    void read (const QJsonObject& json);

private:
    QString mName;
    QString mUrl;
    QString mDescription;
    int mId;
};

#endif // DRINK_H
