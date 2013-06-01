import QtQuick 1.1
import com.nokia.meego 1.0

Rectangle {
    id: rect
    width: STYLE.buttonSize
    height: STYLE.buttonSize
    property alias text: label.text
    property alias objectName: rect.objectName
    color: !mouseArea.pressed ? "white" : "lightgrey"

    signal remoteButtonClicked

    Label {
        id: label
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        // Il faut définir la propriété objetcName des boutons (RemoteButton.qml)
        // key = rect.objectName pour que cela corresponde à la touche à cliquer sur la télécommande
        onClicked: vueWeb.url = "http://hd1.freebox.fr/pub/remote_control?key="+rect.objectName+"&code="+SETTINGS_MANAGER.key
        onPressAndHold: vueWeb.url = "http://hd1.freebox.fr/pub/remote_control?key="+rect.objectName+"&code="+SETTINGS_MANAGER.key+"&long=true"
    }
}
