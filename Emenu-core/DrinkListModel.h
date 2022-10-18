#ifndef DRINKLISTMODEL_H
#define DRINKLISTMODEL_H

#include "Drink.h"
#include "FileManager.h"

#include <QAbstractTableModel>

class EMENUCORE_EXPORT DrinkListModel : public QAbstractTableModel
{
    Q_OBJECT

public:
    enum Roles{
        nameRole = Qt::UserRole+1,
        FilePathRole,
        DescriptionRole
    };
    DrinkListModel(QObject* parent =0);

    void addDrink(const Drink& drink);

    int rowCount(const QModelIndex& parent = QModelIndex()) const override;
    int columnCount(const QModelIndex& parent = QModelIndex()) const override;
    QVariant data (const QModelIndex& index, int role = Qt::DisplayRole) const override;
    Q_INVOKABLE QString getName (int row);
    QHash<int, QByteArray> roleNames() const override;

private:
    FileManager mFile;
    QVector<Drink> mDrinkList;
};

#endif // DRINKLISTMODEL_H
