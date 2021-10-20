import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12

Item{

    GridLayout{
        id: grid
        columns: 2
        Label{
            text: qsTr("Choose client or server ")
            Layout.columnSpan: 2
            font.bold: true
            font.pointSize: 14
        }
        Button{
          id: buttonClient
          text: qsTr('Client')

          flat: true
          Material.background: "#555555"
          onClicked: {
            qmlApp.changeChatType(buttonClient.text)
            popupSelection.close()
          }
        }
        Button{
          id: buttonServer
          text: qsTr('Server')

          flat: true
          Material.background: "#555555"
          onClicked: {
            qmlApp.changeChatType(buttonServer.text)
            popupSelection.close()
          }
        }

    }
}
