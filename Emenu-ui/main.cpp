#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "DrinkListModel.h"
#include "PictureImageProvider.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    DrinkListModel drinkListModel;

    QQmlApplicationEngine engine;
    engine.addImportPath(":/import");

    QQmlContext* context = engine.rootContext();
    context->setContextProperty("drinkListModel", & drinkListModel);
    engine.addImageProvider("pictures", new PictureImageProvider(&drinkListModel));

    const QUrl url(QStringLiteral("qrc:/content/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
