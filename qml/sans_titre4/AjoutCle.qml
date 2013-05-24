import QtQuick 1.0
import com.nokia.meego 1.0
import FileIO 1.0

Page {
    id: page2

    //juste pour visualiser la page
    //Rectangle{color: "green"; anchors.fill: parent}

    FileIO {
        id: fichierCle
        source:"../../../fichierCleFreebox.js"
        onError: console.log(msg)
        Component.onCompleted: {
            console.log(fichierCle.read())
        }
    }


Button {
    id: validCle
    text:"validez"
    anchors.centerIn: page2
    onClicked:{}
}

    TextInput{
        id: inputCleFreebox
        color: "black"
        cursorVisible: true
        text:"Entrez le code freebox"
    }
    tools:
    ToolBarLayout {
        id: commonToolspage2
//        anchors.bottom: parent.bottom
        visible: false
        ButtonRow {
            ToolButton {
                id: toolButtonRetour
                visible: true
                iconSource: "icon-m-toolbar-previous.png"
                onClicked: { pageStack.pop(); }

            }
            ToolButton {
                id: toolButtonOptions
                iconSource: "icon-m-toolbar-settings.png"
                visible: true
                onClicked:
                    (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()

            }
            ToolButton{
                id: toolButtonSuivant
                iconSource: "icon-m-toolbar-next.png"
                visible: true
                onClicked: { pageStack.pop(); }
            }
        }
    }
}
