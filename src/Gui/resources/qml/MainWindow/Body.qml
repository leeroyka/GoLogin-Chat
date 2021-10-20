import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12
import QtQuick.Dialogs 1.2
import "../Shared" as Shared

Item{

  property string chatType: "Client"
  function changeChatType(type)
  {
    if(type == "Server")
    {
      chatType = type
      textFieldUser.visible = true
    }
    else
    {}
  }
  Rectangle {
      anchors.fill: parent
      color: "#353535"
    function sendMessage(msg)
    {
    }
    Component.onCompleted: {
      popupSelection.open()
      //updatemessages();
    }


    TextField{
      id: textFieldMessage
      anchors.top: parent.top
      anchors.left: parent.left
      anchors.right: parent.right
      placeholderText: "Message"
      anchors.leftMargin: 10
      anchors.topMargin: 20
      anchors.bottomMargin: 10
      anchors.rightMargin: 20
    }
    TextField{
      id: textFieldUser
      anchors.top: textFieldMessage.bottom
      anchors.left: parent.left
      anchors.leftMargin: 10
      visible: false
      placeholderText: "User"
      width: 100
    }

    Button {
        id: buttonSend
        anchors.top: textFieldMessage.bottom
        anchors.left: parent.left
        anchors.leftMargin: (parent.width / 2) - (buttonSend.width / 2)
        text: qsTr("Send")
        flat: true
        Material.background: "#454545"
        onClicked: {
              //sendMessage(buttonSend.text)
              if(chatType == "Server" && textFieldUser.text == '')
                dialogError.open()
        }
    }

            Shortcut{
                sequence: "Ctrl+Return"
                onActivated: {
                    footer.outText = ''
                }
            }
            Dialog{
                id: dialogError
                title: "Error"
                standardButtons: Dialog.Ok
                Label{
                    id:labelError
                    color: "#000000"
                    text: qsTr('Error. User text area empty')
                }
                function setText(errorText){
                    labelError.text = errorText
                }
            }
  }
}
