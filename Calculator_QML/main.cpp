#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include <QStringList>

#include "calculator.h"

int main(int argc, char *argv[])
{

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Calculator calk_obj;

    QQmlContext* classContext = engine.rootContext();
    classContext->setContextProperty("calculator", &calk_obj);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
