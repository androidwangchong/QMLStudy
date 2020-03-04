import QtQuick 2.0

Rectangle {
    id: root
    border.color: "#000000"
    width: 50
    height: 20
    property alias buttonText: tip_text.text
    property alias buttonTextColor: tip_text.color
    signal clicked
    radius: 10
    Text {
        id: tip_text
        text: "按钮"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    MouseArea {
        id: mouseArea
        width: parent.width
        height: parent.height
        onClicked: {
            root.clicked()
        }
    }
}
