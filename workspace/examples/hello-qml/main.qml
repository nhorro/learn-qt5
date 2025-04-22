import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Hola Qt/QML"

    Rectangle {
        anchors.fill: parent
        color: "#dfe6e9"

        Text {
            text: "¡Hola Mundo desde QML!"
            anchors.centerIn: parent
            font.pointSize: 20
        }
    }
}
