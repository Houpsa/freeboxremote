import QtQuick 1.0
import com.nokia.meego 1.0

Page {
    Column {
        anchors.top: parent.top; anchors.topMargin: STYLE.margin
        anchors.left: parent.left; anchors.leftMargin: STYLE.margin
        anchors.right: parent.right; anchors.rightMargin: STYLE.margin
        spacing: STYLE.margin

        TextArea {
            id: textArea
            width: parent.width
            placeholderText: qsTr("Please enter the Freebox code here")
            text: SETTINGS_MANAGER.key
        }

        Button {
            text: qsTr("Save")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: SETTINGS_MANAGER.saveKey(textArea.text)
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
