import QtQuick 1.0
import com.nokia.meego 1.0

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
            onClicked: {

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
                }
            }

            Row {
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                Column {
                    RemoteButton {
                        text: "Vol +"
                    }
                    RemoteButton {
                        text: "Vol -"
                    }
                }
                Column {
                    RemoteButton {
                        text: "Menu"
                    }
                    RemoteButton {
                        text: "Mute"
                    }
                }
                Column {
                    RemoteButton {
                        text: "Prgm +"
                    }
                    RemoteButton {
                        text: "Prgm -"
                    }
                }
            }
        }
    }

    Menu {
        id: configMenu
        MenuLayout {
            MenuItem {
                text: qsTr("Quit")
                onClicked: Qt.quit();
            }
            MenuItem {
                text: qsTr("Configure Freebox key")
                onClicked: pageStack.push(Qt.resolvedUrl("AjoutCle.qml"))
            }
        }
    }
}
