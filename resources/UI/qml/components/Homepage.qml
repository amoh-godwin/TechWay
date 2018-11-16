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
                    Layout.preferredHeight: 320
                    color: "transparent"

                    SwipeView {
                        anchors.fill: parent

                        Preview {
                        }

                    }
                }

                // New
                ColumnLayout {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 24
                    anchors.rightMargin: 24
                    Layout.fillWidth: true
                    spacing: 0

                    RowLayout {
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        Layout.preferredWidth: parent.width
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
                            Layout.preferredWidth:120
                            Layout.fillHeight: true
                        }
                    }

                    SwipeView {
                        anchors.top: parent.children[0].bottom
                        anchors.topMargin: 24
                        anchors.left: parent.left
                        clip: true
                        Layout.fillWidth: true
                        Layout.preferredHeight: 200
                        spacing: 0

                        SwipeItem {
                        }

                        SwipeItem {

                        }

                        SwipeItem {

                        }

                    }

                }

                // Most Popular
                ColumnLayout {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 24
                    anchors.rightMargin: 24
                    Layout.fillWidth: true
                    spacing: 0

                    RowLayout {
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        Layout.preferredWidth: parent.width
                        Layout.preferredHeight: 24

                        Text {
                            anchors.top: parent.top
                            anchors.topMargin: 0
                            topPadding: 0
                            text: qsTr('MOST POPULAR')
                            font.family: "Segoe UI"
                            font.pixelSize: 24
                            color: "#0069ff"
                        }

                        Rectangle {
                            anchors.right: parent.right
                            Layout.preferredWidth:120
                            Layout.fillHeight: true
                        }
                    }

                    SwipeView {
                        anchors.top: parent.children[0].bottom
                        anchors.topMargin: 24
                        anchors.left: parent.left
                        clip: true
                        Layout.fillWidth: true
                        Layout.preferredHeight: 200
                        spacing: 0

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
