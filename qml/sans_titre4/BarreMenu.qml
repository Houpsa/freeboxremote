//// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
//import QtQuick 1.1
//import com.nokia.meego 1.0

//ToolBarLayout {
//    id: commonTools
//    visible: false
//    ButtonRow {
//        ToolButton {
//            property alias visibleOn : toolButtonRetour.visible
//            id: toolButtonRetour
//            iconSource: "icon-m-toolbar-back.png"
//            visible: false
//        }
//        ToolButton {
//            id: toolButtonOptions
//            iconSource: "icon-m-toolbar-settings.png"
//            visible: true
//            onClicked:
//                (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()

//        }
//        ToolButton{
//            id: toolButtonSuivant
//            iconSource: "icon-m-toolbar-next.png"
//            visible: true
//            onClicked: pageStack.push(Qt.resolvedUrl("AjoutCle.qml"))
//        }
//    }
//}
