import QtQuick 2.0
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4
Item {
    ListModel {
        id: listModel
        ListElement { name: "One"; page: "" }
        ListElement { name: "Two"; page: "" }
        ListElement { name: "Three"; page: "" }
    }

    GridView {
        id: gridView
        anchors.fill: parent
        model: listModel
        cellHeight: 240
        cellWidth: 240
        delegate: Rectangle {
            width: 200
            height: 200
            color: "grey"
            radius: 5
            /*
            Text {
                color: "white"
                text: name
                anchors.centerIn: parent
            }
            */
            Image {
                anchors.centerIn: parent
                source: "qrc:/images/coffee04.png"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = page
            }
        }
    }

    Button {
        id: nextButton
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }

        text: "Next"

    }

    Button {
        id: previousButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }

        text: "Previous"
        onClicked: stackview.push( "GridView_1.qml" )
    }
}
