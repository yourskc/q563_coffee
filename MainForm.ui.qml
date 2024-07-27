import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.3

Item {
    id: item1
    width: 640
    height: 480

    property alias button1: button1
    property alias button2: button2

    RowLayout {
        anchors.verticalCenterOffset: 1
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent

        Button {
            id: button1
            text: qsTr("Press Me 1")
            visible: false
            enabled: true
        }

        Button {
            id: button2
            text: qsTr("Press Me 2")
            visible: false
        }
    }

    Page {
        id: page1
        x: 426
        y: 291
        image_src: qsTr("")
    }

    Button {
        id: button3
        x: 443
        y: 376
        width: 150
        height: 72
        text: qsTr("H E L P")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
    }

    Image {
        id: image1
        x: 532
        y: 169
        width: 100
        height: 100
        source: "images/ui controls/buttons/go/white.png"
    }
}
