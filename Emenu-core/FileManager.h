#ifndef FILEMANAGER_H
#define FILEMANAGER_H
#include "Drink.h"
#include <QJsonObject>


class FileManager
{
public:

    FileManager();
    bool loadFile();

    void read(const QJsonObject& json);
    QVector<Drink> drinkList();

public:
    QVector<Drink> mdrinkList;
};

#endif // FILEMANAGER_H
