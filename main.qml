import QtQuick 2.6
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }


    SwipeView
       {
           id: swipeView
           anchors.fill: parent
           Page
           {
               title: "Espresso"
               image_src: "images/icons/coffees/Espresso.png"
           }
           Page
           {
               title: "Cappucino"
               image_src: "images/icons/coffees/cappucino.png"
           }
           Page
           {
               title: "Latte"
               image_src: "images/icons/coffees/Latte.png"
           }
           Page
           {
               title: "Americano"
               image_src: "images/icons/coffees/Americano.png"
           }
           Page
           {
               title: "Macchiato"
               image_src: "images/icons/coffees/Macchiato.png"
           }
       }

       PageIndicator
       {
           id: pageIndicator
           anchors.bottom: swipeView.bottom
           anchors.bottomMargin: 10
           anchors.horizontalCenter: swipeView.horizontalCenter
           count: swipeView.count
           currentIndex: swipeView.currentIndex
       }



    MainForm {
        anchors.fill: parent
        button1.onClicked: messageDialog.show(qsTr("Button 1 pressed"))
        button2.onClicked: messageDialog.show(qsTr("Button 2 pressed"))
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
