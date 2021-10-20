import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12

Item{
    Material.theme: Material.Dark
    GridLayout{
        id: grid
        columns: 2
        Label{
            text: qsTr("Authorization")
            Layout.columnSpan: 2
            font.bold: true
            font.pointSize: 14
        }
        Label{
            text: qsTr('Login')
        }
        TextField{
            id: inputLogin
            text: qsTr('')
        }
        Label{
            text: qsTr('Password')
        }
        TextField{
            id: inputPassword
            text: qsTr('')
            echoMode: TextInput.Password
        }
        Button{
          id: buttonSignIn
          text: qsTr('Sign In')
          flat: true
          onClicked: {
            popupAuthorization.close()
          }
        }
        Button{
          id: buttonSignUp
          text: qsTr('Sign Up')
          flat: true
          onClicked: {
            popupAuthorization.close()
          }
        }

    }
}
