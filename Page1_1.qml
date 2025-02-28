import QtQuick 2.0

Rectangle {
    color:"black"
        Image {
            id: image1_1
            x: 200
            y: 150
            width: 360
            height: 360
            source: "qrc:/images/coffee_p01.png"
            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = "qrc:/Coffee1-1.qml"
            }
        }
        Image {
            id: image1_2
            x: 200+400
            y: 150
            width: 360
            height: 360
            source: "qrc:/images/coffee_p02s.png"
            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = "qrc:/Coffee1-2.qml"
            }
        }
        Image {
            id: image1_3
            x: 200+400*2
            y: 150
            width: 360
            height: 360
            source: "qrc:/images/coffee_p03s.png"
            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = "qrc:/Coffee1-3.qml"
            }
        }
        Image {
            id: image1_4
            x: 200+400*3
            y: 150
            width: 360
            height: 360
            source: "qrc:/images/coffee_p01.png"
        }

        Image {
            id: image1_5
            x: 200
            y: 550
            width: 360
            height: 360
            source: "qrc:/images/coffee_p01.png"
        }
        Image {
            id: image1_6
            x: 200+400
            y: 550
            width: 360
            height: 360
            source: "qrc:/images/coffee_p01.png"
        }
        Image {
            id: image1_7
            x: 200+400*2
            y: 550
            width: 360
            height: 360
            source: "qrc:/images/coffee_p01.png"
        }
        Image {
            id: image1_8
            x: 200+400*3
            y: 550
            width: 360
            height: 360
            source: "qrc:/images/coffee_p01.png"
        }
}
