import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Hello World Swipe"

    SwipeView {
        id: swipeView
        anchors.fill: parent

        Page {
            Label {
                anchors.centerIn: parent
                text: "Hello, World! Page 1"
            }
        }

        Page {
            Label {
                anchors.centerIn: parent
                text: "Hello, World! Page 2"
            }
        }

        Page {
            Label {
                anchors.centerIn: parent
                text: "Hello, World! Page 3"
            }
        }
    }
}
