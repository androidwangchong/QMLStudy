import QtQuick 2.0

Rectangle {
    id: root
    width: 80
    height: width
    property alias fillColor: root.color
    property alias cellText: cell.text
    Behavior on rotation {
        NumberAnimation {
            duration: 1000
        }
    }
    Behavior on scale {
        NumberAnimation {
            duration: 1000
        }
    }
    Text {
        id: cell
        width: 50
        height: 50
        text: "user"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.centerIn: parent
    }
    MouseArea {
        id: mouseArea
        width: parent.width
        height: parent.height
        onClicked: {
            changeUI()
        }
    }

    function changeUI() {
        root.rotation = 360
        root.scale = 0
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:50;anchors_width:50}
}
##^##*/

