import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "components"
import "others"

ApplicationWindow {
    visible: true
    width: 1324
    height: 720
    title: qsTr('Askhar Kumah - TechWay')

    Properties {
        id: settings
    }

    RowLayout {
        width: parent.width
        height: parent.height
        spacing: 0

        // Menu
        Rectangle {
            Layout.preferredWidth: 250
            Layout.minimumWidth: 48
            Layout.maximumWidth: 250
            Layout.fillHeight: true
            color: "transparent"

            RowLayout {
                spacing: 0
                height: parent.height

                // Nav Icons
                ToolBar {
                    id: small_nav
                    Layout.preferredWidth: 50
                    Layout.fillHeight: true

                    background: Rectangle {
                        color: "#121316"

                        // border
                        Rectangle {
                            anchors.right: parent.right
                            width: 2
                            height: parent.parent.height
                            color: "#0069ff"
                        }

                    }

                }

                // Details Menu
                StackView {
                    Layout.preferredWidth: 200
                    Layout.fillHeight: true

                    background: Rectangle {
                        color: "#191b1f"
                    }
                }

            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            StackView {
                width: parent.width
                height: parent.height
                initialItem: view_home
            }

            Homepage {
                id: view_home
            }


        }

    }

}
