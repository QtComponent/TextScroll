import QtQuick 2.0

Rectangle {
    id: root
    property string text: ""

    width: 100; height: 30
    color: "lightblue"
    clip: true

    PathView {
        id: pathView
        width: _text.width*3; height: _text.height
        model: 3
        delegate: Text { text: _text.text }

        path: Path {
            startX: 0; startY: pathView.height/2
            PathLine { x: pathView.width; y: pathView.height/2 }
        }

        SequentialAnimation on x {
            loops: Animation.Infinite

            PropertyAnimation {
                from: 0
                to: -_text.width
                duration: 5000
            }
        }
    }

    Text {
        id: _text
        visible: false
        text: root.text + "   "
    }

    MouseArea { anchors.fill: parent }
}
