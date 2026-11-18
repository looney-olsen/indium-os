import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: root
    color: "#1A1A24"
    width: 800
    height: 400

    Image {
        source: "welcome.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle {
        anchors.bottom: parent.bottom
        width: parent.width
        height: 80
        color: "#80000000"

        Text {
            text: qsTr("Welcome to Indium OS. Sit back and relax while we install your new system.")
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 16
            font.bold: true
        }
    }
}
