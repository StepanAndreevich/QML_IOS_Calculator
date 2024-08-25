import QtQuick 2.0

Item {
    property string userText: ""
    Rectangle {
        id: resultRect
        anchors.fill: parent
        color: "black"

        Text {
            id: input
            anchors.fill: parent
            color: "white"
            verticalAlignment: Text.AlignBottom
            horizontalAlignment: Text.AlignRight
            font.family: "Arial"
            font.pixelSize: 100
            text: userText
        }
    }
}
