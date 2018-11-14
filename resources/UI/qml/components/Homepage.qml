import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../others"

Component {

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#212121"

        ScrollView {
            width: parent.width
            height: parent.height
            spacing: 0

            ColumnLayout {
                width: parent.parent.width
                spacing: 36

                // Preview
                Rectangle {
                    Layout.fillWidth: true
                    Layout.preferredHeight: 280
                    color: "transparent"

                    SwipeView {
                        anchors.fill: parent

                        Preview {

                        }

                    }
                }

                // New
                ColumnLayout {
                    //anchors.top: parent.children[0].bottom
                    //anchors.topMargin: 0
                    width: parent.parent.width
                    spacing: 0

                    RowLayout {
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 24
                        anchors.rightMargin: 24
                        Layout.preferredHeight: 24

                        Text {
                            anchors.top: parent.top
                            anchors.topMargin: 0
                            topPadding: 0
                            text: qsTr('NEW')
                            font.family: "Segoe UI"
                            font.pixelSize: 24
                            color: "#0069ff"
                        }

                        Rectangle {
                            anchors.right: parent.right
                            Layout.preferredWidth: 248
                            Layout.fillHeight: true
                        }
                    }

                    SwipeView {
                        anchors.top: parent.children[0].bottom
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 24
                        anchors.rightMargin: 24
                        anchors.topMargin: 24
                        Layout.fillWidth: true
                        Layout.preferredHeight: 124

                        SwipeItem {

                        }

                        SwipeItem {

                        }

                        SwipeItem {

                        }

                    }

                }

            }

        }

    }

}
