import QtQuick 2.10
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12

import "./MainWindow" as MainWindow
import "./Shared" as Shared


Window {
    id: mainWindow
    visible: true
    width: 520
    height: 500
    minimumWidth: 520
    minimumHeight: 500
    title: qsTr("Chat")
    Connections {
        target: qmlApp

        onUpdateMessages:{
          footer.printData(data)
        }

        onUpdateChatType:{
          header.changeChatType(type)
          body.changeChatType(type)
        }
    }
    Timer{

    }


    Popup{
      id: popupSelection
      topMargin: (parent.height/2)-(popupSelection.height/2)
      leftMargin: (parent.width/2)-(popupSelection.width/2)


      contentItem: Shared.Selection{
          id: widgetSelection
      }
      closePolicy: Popup.NoAutoClose
      modal: true
    }
  MainWindow.Header {
        id: header
        anchors.fill: parent
        anchors.bottomMargin: parent.height - 45
        width: parent.width
    }

  SplitView{
      anchors.top: header.bottom
      anchors.left: header.left
      width: parent.width
      height: parent.height - header.height + 20
      orientation: Qt.Vertical

      Layout.fillWidth: true
    MainWindow.Body {
        id: body
        width: parent.width
        SplitView.minimumHeight: 150
        SplitView.preferredHeight: 150
    }
    MainWindow.Footer{
        id: footer
        anchors.top: body.bottom
        anchors.left: body.left
        SplitView.minimumHeight: 200
    }
  }
    Popup{
        id: popupAuthorization
        leftMargin: parent.width - 300

        contentItem: Shared.Authorization{
            id: widgetAuthorization
        }
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        modal: true
    }
}
