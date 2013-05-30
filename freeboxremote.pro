TEMPLATE = app
TARGET = freeboxremote

QT = core gui declarative

HEADERS += \
    fileio.h \
    style.h \
    settingsmanager.h

SOURCES += main.cpp \
    fileio.cpp \
    style.cpp \
    settingsmanager.cpp


OTHER_FILES += \
    qtc_packaging/debian_fremantle/rules \
    qtc_packaging/debian_fremantle/README \
    qtc_packaging/debian_fremantle/copyright \
    qtc_packaging/debian_fremantle/control \
    qtc_packaging/debian_fremantle/compat \
    qtc_packaging/debian_fremantle/changelog \
    fichierCleFreebox.js

# Booster for Harmattan
CONFIG += qdeclarative-boostable

# Deployments
qml.source = qml
qml.target = .

data.source = data
data.target = .
DEPLOYMENTFOLDERS = qml data

include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()
