#include <QtGui/QApplication>
#include "qmlapplicationviewer.h"
#include "fileio.h"
#include <QTextStream>
#include <QtDeclarative>
Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    qmlRegisterType<FileIO, 1>("FileIO", 1, 0, "FileIO");

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/sans_titre4/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
