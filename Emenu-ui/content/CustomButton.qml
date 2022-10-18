import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    background: Rectangle{
        anchors.fill: parent
        radius: 5
        gradient: Gradient{
            GradientStop {position: -0.2; color: "lightblue"}
            GradientStop {position: 1.3; color: "pink"}
        }
    }
    id: button
    x: 855
    y: 912
    width: 210
    height: 58    
    font.family: "Tahoma"
    font.pointSize: 15
    onPressed: anim.start()

            SequentialAnimation {
                id: anim

                // Expand the button
                PropertyAnimation {
                    target: button
                    property: "scale"
                    to: 1.2
                    duration: 200
                    easing.type: Easing.InOutQuad
                }

                // Shrink back to normal
                PropertyAnimation {
                    target: button
                    property: "scale"
                    to: 1.0
                    duration: 200
                    easing.type: Easing.InOutQuad
                }
            }
}
