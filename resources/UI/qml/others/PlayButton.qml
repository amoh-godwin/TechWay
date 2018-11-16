import QtQuick 2.10
import QtQuick.Controls 2.3

Button {
    id:ctrl
    width: 24
    height: 24

    background: Rectangle {

        implicitWidth: 28
        implicitHeight: 28
        radius: ctrl.width / 2
        border.width: 1
        border.color: "#0069ff"
        color: "transparent"

    }

    contentItem: Text {
        anchors.centerIn: ctrl
        text: ctrl.text
        color: "#0069ff"
        font.family: "Segoe MDL2 Assets"
    }

}
