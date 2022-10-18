#ifndef PICTUREIMAGEPROVIDER_H
#define PICTUREIMAGEPROVIDER_H

#include <QQuickImageProvider>
class DrinkListModel ;

class PictureImageProvider : public QQuickImageProvider
{
public:

    PictureImageProvider(DrinkListModel* drinkListModel);

    QPixmap requestPixmap(const QString& id, QSize* size, const QSize& requestedSize) override;

private:
    DrinkListModel* mDrinkListModel;
};

#endif // PICTUREIMAGEPROVIDER_H
