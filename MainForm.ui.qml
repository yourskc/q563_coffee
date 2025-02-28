import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    width: 640
    height: 350
    color:"gray"
    property alias button1: button1
    property alias button2: button2
    RowLayout {
        anchors.centerIn:  parent
        Button {
            id: button1
            text: qsTr("Press Me 1")
        }

        Button {
            id: button2
            text: qsTr("Press Me 2")
        }
    }

    Image {
        id: image1
        x: 0
        y: 55
        width: 229
        height: 239
        source: "images/coffee01.png"
    }
}
