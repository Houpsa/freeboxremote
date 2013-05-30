#include <QtCore/QtGlobal>
#include <QtGui/QApplication>
#include <QtDeclarative/QDeclarativeContext>
#include "qmlapplicationviewer.h"
#include "style.h"
#include "settingsmanager.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));
    app.data()->setOrganizationName("sardini");
    app.data()->setApplicationName("freeboxremote");
    Style style;
    SettingsManager settingsManager;

    QmlApplicationViewer viewer;
    viewer.rootContext()->setContextProperty("STYLE", &style);
    viewer.rootContext()->setContextProperty("SETTINGS_MANAGER", &settingsManager);
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
