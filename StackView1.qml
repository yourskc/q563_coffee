import QtQuick 2.0
import QtQuick.Controls 1.4
Item {
StackView {

   id: s_view
   visible: true
   anchors.fill:parent
   property int curr_state: 0

initialItem:
    Page1_1 {}
    // GridView_1 {}
	
/*	
state: "first"
Loader {
    id: loader
    anchors.fill: parent
    visible: source != ""

}
states: [
    State {
        name: "first"
    },
    State {
        name: "second"
        PropertyChanges {
            target: loader
            source: "qrc:/Page2_1.qml"
        }
    }
]
*/


}
Image {
    id: image_go
    x: parent.width - width
    y: parent.height / 2
    width: 50
    height: 100
    source: "qrc:/images/icon-go.png"
    MouseArea {
        anchors.fill: parent

        onClicked: {
            if( s_view.curr_state == 0 ) {
                s_view.push("qrc:/Page1_2.qml")
                s_view.curr_state = 1
            }
            else if( s_view.curr_state == 1 ) {
                s_view.push("qrc:/Page1_3.qml")
                s_view.curr_state = 2
            }
        }
    }
}

Image {
    id: image_back
    x: 20
    y: parent.height / 2
    width: 50
    height: 100
    source: "qrc:/images/icon-back.png"
    MouseArea {
        anchors.fill: parent
        onClicked: {
        if( s_view.curr_state > 0 ) {
            onClicked: s_view.pop()
            s_view.curr_state -= 1
        }
        }
    }
}
}
