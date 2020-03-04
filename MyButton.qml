import QtQuick 2.0

Item {
    id : root
    property alias text: label.text
    property alias backColor: rectangle.color
    signal clicked
    Rectangle {
        id : rectangle
        x: 12
        y: 12
        width: 80
        height: 20
        color: "#84fab0"
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#84fab0"
            }

            GradientStop {
                position: 1
                color: "#8fd3f4"
            }
        }

        Text {
            id: label
            width: parent.width
            height: parent.height
            text: qsTr("texttexttexttext")
            elide: Text.ElideMiddle
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        MouseArea {
            id : mouseArea
            width: parent.width
            height: parent.height
            onClicked: {
                root.clicked()
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
