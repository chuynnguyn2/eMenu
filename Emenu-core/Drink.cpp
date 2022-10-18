#include "Drink.h"

Drink::Drink(const QString &name):
    mName(name),
    mUrl("qrc:/images/Res/istockphoto-1276735653-612x612.jpg"),
    mDescription(""),
    mId(-1)
{

}

QString Drink::getName() const
{
    return mName;
}


QString Drink::getUrl() const
{
    return mUrl;
}


QString Drink::getDescription() const
{
    return mDescription;
}


int Drink::getId() const
{
    return mId;
}


void Drink::read(const QJsonObject &json)
{
    if (json.contains("id"))
    {
        mName = json["name"].toInt();
    }
    if (json.contains("name") && json["name"].isString())
    {
        mName = json["name"].toString();
    }
    if (json.contains("url") && json["url"].isString())
    {
        mUrl = json["url"].toString();
    }
    if (json.contains("description")&&json["description"].isString())
    {
        mDescription = json["description"].toString();
    }
}
