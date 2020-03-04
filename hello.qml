import QtQuick 2.12
import QtQuick.Window 2.12

//    Rectangle{
//        width: 300
//        height: 300
//        color: "#666666"
//        Text {
//            id: username
//            anchors.centerIn: parent
//            property int times: 0
//            function addTimes(){
//                times = times + 1
//            }
//            Keys.onSpacePressed: {
//                addTimes()
//            }
//            text: times
//            focus: true
//        }
//        MouseArea{
//            anchors.rightMargin: 114
//            anchors.bottomMargin: 137
//            anchors.leftMargin: 111
//            anchors.topMargin: 137
//            anchors.fill: parent
//            onClicked: {
//                Qt.quit();
//            }
//        }
//    }

//Rectangle {
//    id: rect1
//    x: 12; y: 12
//    width: 76; height: 96
//    color: "lightsteelblue"
//}
//Rectangle {
//    id: rect2
//    width: 76
//    height: 96
//    border.color: "lightsteelblue"
//    border.width: 4
//    radius: 8
//    anchors.margins: 10
//    gradient:
//        Gradient {
//        GradientStop {
//            position: 0.0; color: "#DC143C" }
//        GradientStop {
//            position: 1.0; color: "#FFB6C1" }
//    }

//}


/**
  动画效果  自定义组件
  */
//Rectangle{
//    id: root
//    width: 200
//    height: 200
//    Text {
//        id: name
//        x: 36
//        y: 63
//        width: 139
//        height: 50
//        text: qsTr("text")
//        verticalAlignment: Text.AlignVCenter
//        horizontalAlignment: Text.AlignHCenter
//        Behavior on scale {
//            NumberAnimation { duration: 1000 }
//        }
//        Behavior on rotation {
//            NumberAnimation { duration: 1000 }
//        }
//        smooth: true
//    }
//    MyButton {
//        id : button;
//        text: "点击事件"
//        backColor: "#FFB6C1"
//        onClicked: {
//            name.rotation = name.rotation + 90
//            if(name.scale == 1){
//                name.scale = name.scale - 1
//            }else if(name.scale == 0){
//                name.scale = name.scale + 1
//            }else{
//                console.log("不能点击")
//            }

//        }
//    }

//}


/**
  自定义列表重复组件
  */
//Rectangle {
//    id: root
//    width: 500
//    height: 500
//    property var colorArray: ["#FFB6C1", "#8B008B", "#00BFFF", "#5F9EA0", "#FFFF00", "#F5DEB3", "#483D8B", "#0000FF", "#708090"]
//    MouseArea {
//        width: parent.width
//        height: parent.height
//        onClicked: {
//            Qt.quit()
//        }
//    }
//    Grid {
//        id: column
//        columns: 3
//        rows: 3
//        Repeater {
//            id: repeater
//            model: 9
//            MyColumn {
//                id: myColumn1
//                focus: true
//                fillColor: colorArray[index]
//                cellText: "cell  " + (index + 1)
//            }
//        }
//        anchors.centerIn: parent
//        spacing: 8
//    }
//}


/**
  圆角输入框
  */
//Rectangle {
//    id: root
//    width: 200
//    height: 200
//    MyTextInput {
//        id: input1
//        focus: true
//        inputText: "input1"
//        anchors.centerIn: parent
//        KeyNavigation.tab: input2
//    }
//    MyTextInput {
//        id: input2
//        focus: true
//        inputText: "input2"
//        anchors.top: input1.bottom
//        anchors.topMargin: 10
//        anchors.left: input1.left
//        KeyNavigation.tab: input1
//    }
//}


/**
  按键事件动画
  */
//Rectangle {
//    id: root
//    width: 400
//    height: 400

//    MyColumn {
//        id: myColumn1
//        focus: true
//        fillColor: "#0000ff"
//        cellText: "cell  " + (index + 1)
//        Behavior on x {
//            NumberAnimation {
//                duration: 300
//            }
//        }
//        Behavior on y {
//            NumberAnimation {
//                duration: 300
//            }
//        }
//    }
//    focus: true
//    Keys.onLeftPressed: {
//        myColumn1.x = myColumn1.x - 10
//    }

//    Keys.onRightPressed: {
//        myColumn1.x = myColumn1.x + 10
//    }

//    Keys.onUpPressed: {
//        myColumn1.y = myColumn1.y - 10
//    }
//    Keys.onDownPressed: {
//        myColumn1.y = myColumn1.y + 10
//    }
//}


/**
  动画控制
  */
//Rectangle {
//    id: root
//    width: 400
//    height: 400

//    MyColumn {
//        id: myColumn1
//        layer.smooth: true
//        smooth: true
//        focus: true
//        fillColor: "#0000ff"
//        cellText: "cell  " + (index + 1)
//        RotationAnimation on rotation {
//            to: 360
//            duration: 4000
//            loops: Animation.Infinite
//        }
//        NumberAnimation on y {
//            to: 400
//            duration: 4000
//            loops: Animation.Infinite
//        }

//        //        NumberAnimation on scale {
//        //            to: 0
//        //            duration: 4000
//        //            loops: Animation.Infinite
//        //        }
//    }
//}


/**
  缓冲曲线,组合动画
  */
//Rectangle {
//    id: root
//    width: 400
//    height: 400

//    Rectangle {
//        id: root1
//        width: 200
//        height: 200
//        Text {
//            id: text1
//            width: 30
//            height: 30
//            text: "textview"
//            elide: Text.ElideMiddle
//            verticalAlignment: Text.AlignVCenter
//            horizontalAlignment: Text.AlignHCenter
//        }
//        MouseArea {
//            id: mouse
//            width: 30
//            height: 30
//            onClicked: {
//                anim.start()
//            }
//        }
//        ParallelAnimation {
//            id: anim

//            SequentialAnimation {

//                NumberAnimation {
//                    targets: [text1]
//                    properties: "y"
//                    to: 150
//                    duration: 1200
//                }
//                NumberAnimation {
//                    targets: [text1]
//                    properties: "y"
//                    to: 100
//                    duration: 500
//                }
//                NumberAnimation {
//                    targets: [text1]
//                    properties: "y"
//                    to: 150
//                    duration: 300
//                }
//            }

//            NumberAnimation {
//                targets: [text1]
//                properties: "rotation"
//                to: 720
//                duration: 2000
//            }

//            NumberAnimation {
//                targets: text1
//                properties: "x"
//                to: 200
//                duration: 2000
//            }
//        }
//    }
//}


/**
  状态修改 状态（States）
  */
//Rectangle {
//    id: rectangle
//    width: 400
//    height: width
//    MyTrafficLights {
//        id: myTrafficLights
//        width: 200
//        height: 300
//        anchors.horizontalCenter: parent.horizontalCenter
//    }

//    Row {
//        spacing: 8
//        NormalButton {
//            id: button1
//            buttonText: "绿灯"
//            buttonTextColor: "#008000"
//            onClicked: {
//                myTrafficLights.state = "go"
//            }
//        }

//        NormalButton {
//            id: button2
//            buttonText: "黄灯"
//            buttonTextColor: "#FFFF00"
//            onClicked: {
//                myTrafficLights.state = "slow"
//            }
//        }
//        NormalButton {
//            id: button3
//            buttonText: "红灯"
//            buttonTextColor: "#FF0000"
//            onClicked: {
//                myTrafficLights.state = "stop"
//            }
//        }
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.top: myTrafficLights.bottom
//        anchors.topMargin: 10
//    }
//}


/**
  listView显示及高亮
  */
//Rectangle {
//    width: 240
//    height: 300
//    color: "#ffffff"
//    Keys.onEnterPressed: {
//        console.log(listView.section)
//    }
//    ListView {
//        id: listView
//        anchors.fill: parent
//        anchors.margins: 20
//        delegate: viewModel
//        clip: true
//        spacing: 5
//        model: 100
//        snapMode: ListView.SnapOneItem
//        highlight: highlightComponent
//        focus: true
//    }

//    Component {
//        id: highlightComponent
//        Item {
//            width: ListView.view.width
//            height: ListView.view.currentItem.height
//            y: ListView.view.currentItem.y
//            Behavior on y {
//                SequentialAnimation {
//                    PropertyAnimation {
//                        target: highlightRectangle
//                        property: "scale"
//                        from: "1"
//                        to: "0"
//                        duration: 100
//                    }
//                    NumberAnimation {
//                        duration: 1
//                    }
//                    PropertyAnimation {
//                        target: highlightRectangle
//                        property: "scale"
//                        from: "0"
//                        to: "1"
//                        duration: 100
//                    }
//                }
//            }
//            Rectangle {
//                id: highlightRectangle
//                anchors.fill: parent
//                color: "lightGreen"
//            }
//        }
//    }

//    Component {
//        id: viewModel
//        Item {
//            id: rectangle
//            width: 40
//            height: 40
//            Text {
//                id: textShow
//                text: index
//                elide: Text.ElideMiddle
//                anchors.centerIn: parent
//            }
//        }
//    }
//}
//Rectangle {
//    id: root
//    width: 300
//    height: 300
//    color: "white"
//    ListView {
//        id: listview
//        width: 50
//        height: parent.height
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.verticalCenter: parent.verticalCenter
//        clip: true
//        focus: true
//        delegate: listviewmodel
//        model: 100
//        snapMode: ListView.SnapOneItem
//        spacing: 5
//    }

//    Component {
//        id: listviewmodel
//        Rectangle {
//            id: rectangle
//            width: 40
//            height: 40
//            anchors.margins: 5
//            color: ListView.isCurrentItem ? "blue" : "green"
//            Text {
//                id: textview
//                text: index
//                anchors.centerIn: parent
//            }
//        }
//    }
//}
//Rectangle {
//    width: 480
//    height: 300

//    //背景色渐变
//    gradient: Gradient {
//        GradientStop {
//            position: 0.0
//            color: "#dbddde"
//        }
//        GradientStop {
//            position: 1.0
//            color: "#5fc9f8"
//        }
//    }

//    //list模型默认9项
//    ListModel {
//        id: theModel

//        ListElement {
//            number: 0
//        }
//        ListElement {
//            number: 1
//        }
//        ListElement {
//            number: 2
//        }
//        ListElement {
//            number: 3
//        }
//        ListElement {
//            number: 4
//        }
//        ListElement {
//            number: 5
//        }
//        ListElement {
//            number: 6
//        }
//        ListElement {
//            number: 7
//        }
//        ListElement {
//            number: 8
//        }
//        ListElement {
//            number: 9
//        }
//    }

//    //Add Item按钮
//    Rectangle {
//        anchors.left: parent.left
//        anchors.right: parent.right
//        anchors.bottom: parent.bottom
//        anchors.margins: 20

//        height: 40

//        color: "#53d769"
//        border.color: Qt.lighter(color, 1.1)

//        Text {
//            anchors.centerIn: parent

//            text: "Add item!"
//        }

//        //点击时新增项  实现model的动态新增
//        MouseArea {
//            anchors.fill: parent

//            onClicked: {
//                theModel.append({
//                                    "number": ++parent.count
//                                })
//            }
//        }

//        property int count: 9
//    }

//    GridView {
//        anchors.fill: parent
//        anchors.margins: 20
//        anchors.bottomMargin: 80

//        clip: true

//        model: theModel //绑定数据源

//        cellWidth: 45 //设置项大小
//        cellHeight: 45

//        delegate: numberDelegate //设置绘制代理
//    }

//    //自定义绘制代理
//    Component {
//        id: numberDelegate

//        Rectangle {
//            id: wrapper

//            width: 40
//            height: 40

//            //首先是一个渐变的矩形框
//            gradient: Gradient {
//                GradientStop {
//                    position: 0.0
//                    color: "#f8306a"
//                }
//                GradientStop {
//                    position: 1.0
//                    color: "#fb5b40"
//                }
//            }

//            //文本值是number的数值
//            Text {
//                anchors.centerIn: parent

//                font.pixelSize: 10

//                text: number
//            }

//            //鼠标点击代理时，移除点击项
//            MouseArea {
//                anchors.fill: parent

//                onClicked: {
//                    if (!wrapper.GridView.delayRemove) //是否延迟移除
//                    {
//                        theModel.remove(index)
//                    }
//                }
//            }

//            //GridView移除项  顺序动画
//            GridView.onRemove: SequentialAnimation {
//                //属性变化
//                PropertyAction {
//                    target: wrapper
//                    property: "GridView.delayRemove"
//                    value: true
//                }
//                //数字动画
//                NumberAnimation {
//                    target: wrapper //目标对象
//                    property: "scale" //执行动画的属性
//                    to: 0 //结束值
//                    duration: 250 //动画持续时长
//                    easing.type: Easing.InOutQuad //动画执行曲线
//                }
//                PropertyAction {
//                    target: wrapper
//                    property: "GridView.delayRemove"
//                    value: false
//                }
//            }

//            //GridView新增项  顺序动画
//            GridView.onAdd: SequentialAnimation {
//                NumberAnimation {
//                    target: wrapper
//                    property: "scale"
//                    from: 0 //开始值
//                    to: 1
//                    duration: 250
//                    easing.type: Easing.InOutQuad
//                }
//            }
//        }
//    }
//}
Item {
    width: 300
    height: 480

    //渐变别景色
    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#4a4a4a"
            }
            GradientStop {
                position: 1.0
                color: "#2b2b2b"
            }
        }
    }

    //主界面列表视图
    ListView {
        id: listView

        anchors.fill: parent

        delegate: detailsDelegate //设置绘制代理
        model: planets //绑定数据源
    }

    ListModel {
        id: planets

        ListElement {
            name: "Mercury"
            imageSource: "images/mercury.jpeg"
            facts: "Mercury is the smallest planet in the Solar System. It is the closest planet to the sun. It makes one trip around the Sun once every 87.969 days."
        }
        ListElement {
            name: "Venus"
            imageSource: "images/venus.jpeg"
            facts: "Venus is the second planet from the Sun. It is a terrestrial planet because it has a solid, rocky surface. The other terrestrial planets are Mercury, Earth and Mars. Astronomers have known Venus for thousands of years."
        }
        ListElement {
            name: "Earth"
            imageSource: "images/earth.jpeg"
            facts: "The Earth is the third planet from the Sun. It is one of the four terrestrial planets in our Solar System. This means most of its mass is solid. The other three are Mercury, Venus and Mars. The Earth is also called the Blue Planet, 'Planet Earth', and 'Terra'."
        }
        ListElement {
            name: "Mars"
            imageSource: "images/mars.jpeg"
            facts: "Mars is the fourth planet from the Sun in the Solar System. Mars is dry, rocky and cold. It is home to the largest volcano in the Solar System. Mars is named after the mythological Roman god of war because it is a red planet, which signifies the colour of blood."
        }
    }

    Component {
        id: detailsDelegate

        Item {
            id: wrapper

            width: listView.width
            height: 30

            //列表项文本
            Rectangle {
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top

                height: 30

                color: "#333"
                border.color: Qt.lighter(color, 1.2)
                Text {
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: 4

                    font.pixelSize: parent.height - 4
                    color: '#fff'

                    text: name //ListElement中的name
                }
            }

            //列表项图标
            Rectangle {
                id: image

                width: 26
                height: 26

                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 2
                anchors.topMargin: 2

                color: "yellow"

                Image {
                    anchors.fill: parent

                    fillMode: Image.PreserveAspectFit

                    source: imageSource //ListElement中的imageSource
                }
            }

            //鼠标点击列表项 进行状态前切换，
            MouseArea {
                anchors.fill: parent
                onClicked: parent.state = "expanded" //切换到展开状态
            }

            //详情页展开时，文本详细信息
            Item {
                id: factsView

                anchors.top: image.bottom //位于放大后的图标底部
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                opacity: 0 //默认透明不显示  当点击代理项时该属性会慢慢变得可见

                Rectangle {
                    anchors.fill: parent

                    gradient: Gradient {
                        GradientStop {
                            position: 0.0
                            color: "#fed958"
                        }
                        GradientStop {
                            position: 1.0
                            color: "#fecc2f"
                        }
                    }
                    border.color: '#000000'
                    border.width: 2

                    Text {
                        anchors.fill: parent
                        anchors.margins: 5

                        clip: true //可剪切
                        wrapMode: Text.WordWrap //文本支持换行
                        color: '#1f1f21'

                        font.pixelSize: 12

                        text: facts
                    }
                }
            }

            //项最大化时 右上角关闭按钮
            Rectangle {
                id: closeButton

                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 2
                anchors.topMargin: 2

                width: 26
                height: 26

                color: "#157efb"
                border.color: Qt.lighter(color, 1.1)

                opacity: 0

                MouseArea {
                    anchors.fill: parent
                    onClicked: wrapper.state = "" //点击恢复到默认状态
                }
            }

            //自定义代理状态
            states: [
                State {
                    name: "expanded"
                    //在点击列表项后 各项属相变化

                    //代理高度铺满视图高度
                    PropertyChanges {
                        target: wrapper
                        height: listView.height
                    }
                    //列表项的图标放大
                    PropertyChanges {
                        target: image
                        width: listView.width
                        height: listView.width
                        anchors.rightMargin: 0
                        anchors.topMargin: 30 //距离顶部30像素
                    }
                    //文本详细信息可见
                    PropertyChanges {
                        target: factsView
                        opacity: 1
                    }
                    //关闭按钮可见
                    PropertyChanges {
                        target: closeButton
                        opacity: 1
                    }
                    //列表项视图
                    PropertyChanges {
                        target: wrapper.ListView.view
                        contentY: wrapper.y
                        interactive: false
                    }
                }
            ]

            //项变化时 过程
            transitions: [
                Transition {
                    NumberAnimation {
                        duration: 200
                        properties: "height,width,anchors.rightMargin,anchors.topMargin,opacity,contentY"
                    }
                }
            ]
        }
    }
}
