import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

Rectangle {
    id: upperBtns
    height: 100
    anchors {
        left: parent.left
        top: parent.top
        right: parent.right
    }

    color: Qt.rgba(0,0,0,0)

    RowLayout {
        id: upperRow
        height: 100
        width: upperBtns.width
        spacing: 100
        anchors {
            left: upperBtns.left
            top: upperBtns.top
        }

        Rectangle {
        width: 100
        height:100
        x:350
        radius:5
        color:"gray"
        Text{
            text:qsTr("Home")
            anchors.centerIn: parent
            color:"white"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                mainLoader.source = "StackView1.qml"
            }
        }
        }
    }

    Rectangle {
    width: 100
    height:100
    // anchors.left: parent.left + 250
    x:500
    radius:5
    color:"darkgreen"
    Text{
        text:qsTr("Settings")
        anchors.centerIn: parent
        color:"white"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            mainLoader.source = "StackView2.qml"
        }
    }
    }



    Text {
        id: statusText
        anchors {
            top: parent.top
            right: parent.right
            rightMargin: 20
        }
        height: parent.height
        width: parent.width / 4
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 20
        color: "white"
        text: "MOIL"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                Qt.quit()
            }
        }
    }

}
