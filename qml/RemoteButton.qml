import QtQuick 1.1
import com.nokia.meego 1.0

Rectangle {
    width: STYLE.buttonSize
    height: STYLE.buttonSize
    property alias text: label.text
    color: !mouseArea.pressed ? "white" : "lightgrey"

    Label {
        id: label
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
}
