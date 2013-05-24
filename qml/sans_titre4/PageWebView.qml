// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.0
import QtWebKit 1.0

WebView {
  id: webView
  anchors.fill: parent
  preferredHeight: height
  preferredWidth: Math.max(parent.width,1000)

  property alias urlFreebox: webView.url

  onLoadFailed: {
      console.log("pas bonne url: "+urlFreebox)
  }

  url: "http://qt.developpez.com/doc/4.7/qdeclarativestates/"

  }

//(QUrl(QString("http://hd1.freebox.fr/pub/remote_control?key=%1&code=%2").arg(key).arg(code)));
