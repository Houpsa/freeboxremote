import QtQuick 1.1
import com.nokia.meego 1.0


PageStackWindow {
    id: window
    showStatusBar: true
    initialPage: mainPage

    MainPage {
        id: mainPage
    }


//WebView{
//    id: vueWeb
//    objectName: "vueWeb"
//    visible:false
//    height: 2
//    width: 2
//    url: ""}

//    MainPage {
//        id: mainPage
//        Button{
//            id: plus
//            objectName: "plus"
//            height: 100
//            width: 100
//            text:"plus"
////            anchors.bottom: mainPage.bottom
//            anchors.verticalCenter: mainPage.bottom
////            anchors.horizontalCenter: mainPage.left
//            }

//        Grid{
//            id:grid1
//            rows: 4
//            spacing: 9
//            height: mainPage.height/8
//            anchors.horizontalCenter: mainPage.horizontalCenter
//            Repeater{
//                model: 9
//                Button{
//                    objectName: 1+index
//                    width: 100
//                    height: 100
//                    text: 1+index
//                    onClicked: vueWeb.url = "http://hd1.freebox.fr/pub/remote_control?key="+objectName+"&code=4837013"
//                    //onPressAndHold: vueWeb.url = "http://hd1.freebox.fr/pub/remote_control?key="+objectName+"&code=4837013&long=true"
//                }
//            }
//            Button{
//                objectName: "list"
//                id: list
//                width: 100
//                height: 100
//                text: "setup"
//                onClicked: vueWeb.url = "http://hd1.freebox.fr/pub/remote_control?key="+objectName+"&code=4837013"


//            }
//            Button{
//                id: zero
//                objectName: "0"
//                width: 100
//                height: 100
//                text:"0"
//                onClicked: vueWeb.url = "http://hd1.freebox.fr/pub/remote_control?key="+objectName+"&code=4837013"

//            }
//            Button{
//                objectName: "retour"
//                width: 100
//                height: 100
//                text: "retour"
//            }
//        }


//    }
}
