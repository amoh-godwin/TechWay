import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3


Rectangle {
    width: parent.width
    height: parent.height

    property url cover_image: settings.user_folder + 'clouds.jpg'
    property url side_image: settings.user_folder + 'nature.jpg'

    RowLayout {
        width: parent.width
        height: parent.height
        spacing: 0

        // Main
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            // background
            Image {
                width: parent.width
                height: parent.height
                fillMode: Image.PreserveAspectCrop
                source: cover_image
            }

            // overlay
            Rectangle {
                width: parent.width
                height: parent.height
                color: "transparent"

                ColumnLayout {
                    anchors.fill: parent

                    anchors.margins: 48
                    width: parent.width

                    Text {
                        text: qsTr('Lorem Ipsum')
                        color: "white"
                    }

                    Rectangle {
                        width: 50
                        height: 50
                    }

                }

            }

        }

        // Controls
        Rectangle {
            Layout.preferredWidth: 150
            Layout.fillHeight: true

            // background
            Image {
                width: parent.width
                height: parent.height
                fillMode: Image.PreserveAspectCrop
                source: side_image
            }

            // overlay
            Rectangle {
                width: parent.width
                height: parent.height
                color: "transparent"

            }

        }

    }

}
