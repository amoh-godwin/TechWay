import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3


Rectangle {
    width: parent.width
    height: parent.height

    property url cover_image: settings.user_folder + 'clouds.jpg'
    property url side_image: settings.user_folder + 'ecff7_c.jpg'

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
                color: "#44000000"

                ColumnLayout {
                    anchors.fill: parent

                    anchors.leftMargin: 64
                    anchors.rightMargin: 64
                    anchors.topMargin: 64
                    width: parent.width

                    Text {
                        anchors.top: parent.top
                        Layout.fillWidth: true
                        font.family: "Uni Sans Heavy CAPS"
                        font.pixelSize: 80
                        wrapMode: Text.WordWrap
                        lineHeight: .8
                        text: qsTr('chicago fire Season 3')
                        color: "white"
                    }

                    Text {
                        anchors.top: parent.children[0].bottom
                        anchors.topMargin: 16
                        Layout.fillWidth: true
                        text: qsTr('Proin eu augue vitae neque consectetur volutpat a ac nunc.'+
                                   ' Nunc ac bibendum orci. Maecenas varius erat dolor,'+
                                   ' condimentum aliquet diam commodo a. Aenean sit amet elit orci.'+
                                   ' Quisque semper vehicula facilisis.')
                        font.pixelSize: 12
                        lineHeight: 1.2
                        wrapMode: Text.WordWrap
                        color: "white"
                    }

                    RowLayout {
                        spacing: 124
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 12

                        Row {
                            height: 24
                            anchors.top: parent.top
                            spacing: 16

                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                text: qsTr('WATCH')
                                color: "white"
                                font.family: "Uni Sans Heavy CAPS"
                                font.pixelSize: 14
                            }

                            PlayButton {
                                text: "\uE768"
                            }

                        }

                        Row {
                            height: 24
                            anchors.top: parent.top
                            spacing: 16

                            Text {
                                anchors.verticalCenter: parent.verticalCenter
                                text: qsTr('in turn')
                                color: "white"
                                font.family: "Uni Sans Heavy CAPS"
                                font.pixelSize: 14
                            }

                            PlayButton {
                                text: "\uE109"
                            }

                        }

                    }

                }

            }

        }

        // Controls
        Rectangle {
            Layout.preferredWidth: 152
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
