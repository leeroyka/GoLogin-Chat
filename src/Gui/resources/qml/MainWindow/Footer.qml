import QtQuick 2.10
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.12
import "../Shared" as Shared

Item{
  Rectangle {
      id: rect
      anchors.fill: parent
      color: "#353535"
    function printData(data)
    {
        textAreaMessages.text += data
    }

    TextArea {
      id: textAreaMessages
      anchors.fill: parent
      anchors.topMargin: 10
      anchors.leftMargin: 20
      anchors.rightMargin: 20
      anchors.bottomMargin: 20
      placeholderText: "History"
      readOnly: true
      text: qsTr('')
    }
  }
}
