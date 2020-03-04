import QtQuick 2.0

Item {

    id: root
    width: 200
    height: 300

    states: [
        State {
            name: "go"
            PropertyChanges {
                target: greenLight
                color: "#008000"
            }
            PropertyChanges {
                target: yellowLight
                color: "#000000"
            }
            PropertyChanges {
                target: redLight
                color: "#000000"
            }
        },

        State {
            name: "slow"
            PropertyChanges {
                target: greenLight
                color: "#000000"
            }
            PropertyChanges {
                target: yellowLight
                color: "#FFFF00"
            }
            PropertyChanges {
                target: redLight
                color: "#000000"
            }
        },

        State {
            name: "stop"
            PropertyChanges {
                target: greenLight
                color: "#000000"
            }
            PropertyChanges {
                target: yellowLight
                color: "#000000"
            }
            PropertyChanges {
                target: redLight
                color: "#FF0000"
            }
        }
    ]

    Rectangle {
        id: yellowLight
        width: 80
        height: width
        radius: width / 2
        color: "#000000"
        anchors.centerIn: parent
    }
    Rectangle {
        id: greenLight
        width: 80
        height: width
        radius: width / 2
        color: "#000000"
        anchors.bottom: yellowLight.top
        anchors.left: yellowLight.left
        anchors.bottomMargin: 10
    }
    Rectangle {
        id: redLight
        width: 80
        height: width
        radius: width / 2
        color: "#000000"
        anchors.top: yellowLight.bottom
        anchors.left: yellowLight.left
        anchors.topMargin: 10
    }
}
