import QtQuick 2.0

Rectangle {
        color:"gray"
        Image {
            id: image1_1
            x: 200
            y: 150
            width: 360
            height: 360
            source: "qrc:/images/coffee02.png"
        }
        Image {
            id: image1_2
            x: 200+400
            y: 150
            width: 360
            height: 360
            source: "qrc:/images/coffee01.png"
        }
        Image {
            id: image1_5
            x: 200
            y: 550
            width: 360
            height: 360
            source: "qrc:/images/coffee01.png"
        }
}
