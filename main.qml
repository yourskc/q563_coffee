import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.2

// ref :
// 1. https://doc.qt.io/qt-5/qml-qtquick-controls2-stackview.html
// 2. https://github.com/MontyTheSoftwareEngineer/StackView-Loader-DyamicObjects

ApplicationWindow {
    id:root
    visible: true
    visibility: "FullScreen"
    width: 640
    height: 480
    title: qsTr("MOIL Coffee")
    color: "black"
/*
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }
*/
    UpperBtns {
        id: upperBtns
    }


    Loader {
        id: mainLoader
        anchors {
            left: parent.left
            right: parent.right
            top: upperBtns.bottom
            bottom: parent.bottom
        }
        source: "qrc:/StackView1.qml"
    }



    Rectangle {
    width:150
    height:50
    x:100
    y:parent.height-50
    radius:5
    color:"darkgray"
    Text{
        text:qsTr(" Page 1 ")
        anchors.centerIn: parent
        color:"white"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            mainLoader.source = "qrc:/StackView1.qml"
        }
    }
}
    Rectangle {
    width:150
    height:50
    x:270
    y:parent.height-50
    radius:5
    color:"darkgreen"
    Text{
        text:qsTr(" Page 2 ")
        anchors.centerIn: parent
        color:"white"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            mainLoader.source = "qrc:/StackView2.qml"
        }
    }
}



}
