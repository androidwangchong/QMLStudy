import QtQuick 2.0

FocusScope {
    id: root
    width: 96
    height: 20
    property alias inputText: input.text
    RoundRectangle {
        id: root1
        width: 96
        height: 20
        color: "#ffffff"
        clip: false
        border.color: "#000000"
        radius: 15
        TextInput {
            id: input
            width: parent.width - 20
            height: parent.height
            text: "asdfasdfasdfasdfasdf"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            clip: true
            focus: true
            anchors.centerIn: parent
        }
    }
}
