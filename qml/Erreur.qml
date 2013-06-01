import QtQuick 1.0
import com.nokia.meego 1.0

Page {
    Column{
        anchors.top: parent.top; anchors.topMargin: STYLE.margin
        anchors.left: parent.left; anchors.leftMargin: STYLE.margin
        anchors.right: parent.right; anchors.rightMargin: STYLE.margin
        spacing: STYLE.margin

    Text{
        anchors.top: parent.top; anchors.topMargin: STYLE.margin
        anchors.left: parent.left; anchors.leftMargin: STYLE.margin
        anchors.right: parent.right; anchors.rightMargin: STYLE.margin
        text: "Veuillez configurer la clé freebox<br>Vérifiez la connection WiFi"
        wrapMode: Text.Wrap
        smooth: true
    }
    Button {
        text: qsTr("Configuration")
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: pageStack.push(Qt.resolvedUrl("FreeboxKeyPage.qml"))
    }
    }

    tools: ToolBarLayout {
        ButtonRow {
            ToolIcon {
                id: toolButtonRetour
                iconSource: "../data/icon-m-toolbar-previous.png"
                onClicked: window.pageStack.pop()

            }
        }
    }
}

