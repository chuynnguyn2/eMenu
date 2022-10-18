#include "DrinkListModel.h"
#include <QDebug>

DrinkListModel::DrinkListModel(QObject *parent):
    mFile(FileManager()),
    mDrinkList(mFile.drinkList())
{

}

int DrinkListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return mDrinkList.size();
}

int DrinkListModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return 4;
}

QVariant DrinkListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();
    const Drink& drink = mDrinkList.at(index.row());
    switch(role)
    {
    case Roles::nameRole:
    case Qt::DisplayRole: return drink.getName();break;
    case Roles::FilePathRole: return drink.getUrl(); break;
    case Roles::DescriptionRole: return drink.getDescription();break;
    default: return QVariant();
    }
}

QString DrinkListModel::getName(int row)
{
    const Drink& drink = mDrinkList.at(row);
    return drink.getName();
}

QHash<int, QByteArray> DrinkListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[Roles::nameRole] = "name";
    roles[Roles::FilePathRole] = "url";
    roles[Roles::DescriptionRole] = "description";
    return roles;
}
