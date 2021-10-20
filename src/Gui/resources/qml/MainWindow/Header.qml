import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12


Rectangle {
    id: rect
    anchors.fill: parent
    color: "#191919"


    function changeChatType(type)
    {
      textLabelHeader.text = type
      if(type == "Server")
      {
        buttonShowSettings.visible = false
      }
      else
      {}
    }

    Text {
        id: textLabelHeader
        anchors.fill: parent
        anchors.topMargin: 10
        anchors.leftMargin: 15
        text: qsTr("Client")
        font.pixelSize: 21
        font.bold: true
        color: "White"
     }
    Button{
        id: buttonShowSettings
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: (parent.height/2) - (buttonShowSettings.height/2)
        anchors.leftMargin: parent.width - buttonShowSettings.width - 10
        text: qsTr('Authorization')
        onClicked: popupAuthorization.open()
    }
}
