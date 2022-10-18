#include "PictureImageProvider.h"
#include "DrinkListModel.h"

PictureImageProvider::PictureImageProvider(DrinkListModel *drinkListModel):
    QQuickImageProvider(QQuickImageProvider::Pixmap),
    mDrinkListModel(drinkListModel)
{

}

QPixmap PictureImageProvider::requestPixmap(const QString &id, QSize *size, const QSize &requestedSize)
{
    int rowId = id.toInt();
    QString fileUrl = mDrinkListModel->data(mDrinkListModel->index(rowId,2), DrinkListModel::Roles::FilePathRole).toString();
    QPixmap originalPicture(fileUrl);
    return originalPicture;
}

