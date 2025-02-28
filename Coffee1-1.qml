import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtMultimedia 5.5

Item {
    anchors.fill: parent

    Text {
        id: coffeeName
        anchors {
            top: parent.top
            left: parent.left
            margins: 40
        }

        font.pixelSize: 48
        color: "white"
        text: "Latte macchiato"
    }

    Text {
        id: artistSongLabel
        anchors {
            top: coffeeName.bottom
            left: coffeeName.left
        }
        font.pixelSize: 24
        color: "white"
        text: "Latte macchiato differs from caffè latte in several ways.\n First, in a latte macchiato, espresso is \n added to milk, rather than milk to espresso. \nSecond, a latte macchiato features \n more foam rather than simply hot milk. \nA latte macchiato often uses only half \nan espresso shot or less. Finally, \na latte macchiato is often a layered drink, \nrather than being mixed"
    }



    Rectangle {
        id: brew
        width:100
        height:100
        x: 1600
        y: 400
        radius:10
        color:"darkgreen"
        Text{
            id:text1
            text:qsTr("Brew")
            anchors.centerIn: parent
            color:"white"
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                // r01.state = "play"
                player.play()
            }


            }
        }
    Image {
        width:464
        height:464
        // id: videoOutput
        // source: player
        anchors.centerIn: parent
        source:"qrc:/images/coffee_p01.png"
    }
/*
    Button {
        id: backButtton
        anchors {
            top: parent.height/2
            left: parent.left
            margins: 40
        }
        text: "Back"
        onClicked: mainLoader.source = "StackView1.qml"
    }
*/
        MediaPlayer {
            id: player
            source: "qrc:/videos/coffee_milk1.mp4"
            autoPlay: false
        }
        VideoOutput {
            width:464
            height:588
            id: videoOutput
            source: player
            anchors.centerIn: parent
        }

}
