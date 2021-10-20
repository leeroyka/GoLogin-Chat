import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12


TextField{
    height: 22
    width: parent.width * 0.2
    style: TextFieldStyle{
        background: Rectangle{
            radius: 2
            implicitHeight: 100
            implicitWidth: 24
            border.color: "#000000"
            border.width: 1
        }
        textColor: "#000000"
    }

}
