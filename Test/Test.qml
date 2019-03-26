import QtQuick 2.0
import "../"

Rectangle {
    width: 640; height: 320

    TextScroll {
        id: textScroll
        anchors.centerIn: parent
        width: 300
        fontPixelSize: 40
        text: "遇见你每天都有好心情，没关系薯片辣条都给你。"
    }
}
