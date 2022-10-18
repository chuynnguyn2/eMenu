import QtQuick 2.15
import QtQuick.Controls 2.15

SpinBox {
    id: control
    from: 1
        value: 1
        editable: false

        contentItem: TextInput {
            z: 2
            text: control.textFromValue(control.value, control.locale)

            //font: control.font
            color: "#ffffff"
            selectionColor: "#21be2b"
            selectedTextColor: "#ffffff"
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            font.pointSize: 18
            font.family: "Tahoma"

            readOnly: !control.editable
            validator: control.validator
            inputMethodHints: Qt.ImhFormattedNumbersOnly
        }

        up.indicator: Rectangle {
            x: control.mirrored ? 0 : parent.width - width
            height: parent.height
            implicitWidth: 40
            implicitHeight: 40
            border.color: "#ffffff"

            Text {
                text: "+"
                font.pixelSize: control.font.pixelSize * 2
                color: "#000000"
                anchors.fill: parent
                fontSizeMode: Text.Fit
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            gradient: Gradient{
                GradientStop {position: -0.2; color: "pink"}
                GradientStop {position: 1.3; color: "lightblue"}
            }
            Rectangle{
                width: parent.width/8
                height: parent.height

                gradient: Gradient{
                    GradientStop {position: -0.2; color: "pink"}
                    GradientStop {position: 1.3; color: "lightblue"}
                }
                x: parent.width-2
                radius: 5
            }

        }

        down.indicator: Rectangle {
            x: control.mirrored ? parent.width - width : 0
            height: parent.height
            implicitWidth: 40
            implicitHeight: 40
            color: control.down.pressed ? "#e4e4e4" : "#f6f6f6"
            border.color: "#ffffff"

            Text {
                text: "-"
                font.pixelSize: control.font.pixelSize * 2
                color: "#000000"
                anchors.fill: parent
                fontSizeMode: Text.Fit
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            gradient: Gradient{
                GradientStop {position: -0.2; color: "pink"}
                GradientStop {position: 1.3; color: "lightblue"}
            }
            Rectangle{
                width: parent.width/8
                height: parent.height

                gradient: Gradient{
                    GradientStop {position: -0.2; color: "pink"}
                    GradientStop {position: 1.3; color: "lightblue"}
                }
                x: -2
                radius: 5
            }
        }

        background: Rectangle {
            implicitWidth: 210
            color: "#000000"
            border.color: "#ffffff"
        }
}
