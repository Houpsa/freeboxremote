import QtQuick 1.0
import com.nokia.meego 1.0
import QtWebKit 1.0

Page {
    tools: ToolBarLayout {
        id: commonTools
        ToolIcon {
            iconSource: "../data/icon-m-toolbar-settings.png"
            onClicked: {
                (configMenu.status === DialogStatus.Closed) ? configMenu.open() : configMenu.close()
            }
        }
        ToolIcon {
            iconSource: "../data/icon-m-toolbar-next.png"
            onClicked: {  }
        }
        WebView{
            id: vueWeb
            objectName: "vueWeb"
            visible:false
            height: 2
            width: 2
            url: ""
            onLoadFailed: {
                pageStack.push(Qt.resolvedUrl("Erreur.qml"))
            }
        }
    }
    Item {
        anchors.centerIn: parent
        width: window.inPortrait ? 3 * STYLE.buttonSize : 6 * STYLE.buttonSize
        height: window.inPortrait ? 6 * STYLE.buttonSize : 3 * STYLE.buttonSize

        Grid {
            anchors.top: parent.top; anchors.left: parent.left
            columns: 3
            Repeater {
                model: 9
                RemoteButton {
                    text: (model.index + 1)
                    objectName: index+1
                }
            }
        }

        Item {
            width: 3 * STYLE.buttonSize
            height: 3 * STYLE.buttonSize
            anchors.bottom: parent.bottom; anchors.right: parent.right
            Row {
                Item {
                    visible: window.inPortrait
                    width: STYLE.buttonSize
                    height: STYLE.buttonSize
                }
                RemoteButton {
                    text: "0"
                    objectName: "0"
                }
            }

            Row {
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                Column {
                    RemoteButton {
                        text: "Vol +"
                        objectName: "vol_in"
                    }
                    RemoteButton {
                        text: "Vol -"
                        objectName: "vol_dec"
                    }
                }
                Column {
                    RemoteButton {
                        text: "Menu"
                        objectName: "home"
                    }
                    RemoteButton {
                        text: "Mute"
                        objectName: "mute"
                    }
                }
                Column {
                    RemoteButton {
                        text: "Prgm +"
                        objectName: "prgm_inc"
                    }
                    RemoteButton {
                        text: "Prgm -"
                        objectName: "prgm_dec"
                    }
                }
            }
        }
    }

    Menu {
        id: configMenu
        MenuLayout {
            MenuItem {
                text: qsTr("Configure Freebox key")
                onClicked: pageStack.push(Qt.resolvedUrl("FreeboxKeyPage.qml"))
            }
            MenuItem {
                text: qsTr("Quit")
                onClicked: Qt.quit();
            }
        }
    }
}
