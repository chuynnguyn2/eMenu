import QtQuick 2.15
import QtQuick.Controls 2.15
import EMenu 1.0

Rectangle{
    id: root
    width: Constants.width
    height: Constants.height
    property alias screen01: screen01
    property alias screen02: screen02

    color: Constants.backgroundColor


    Screen01Form{
        id: screen01

    }

    Screen02Form{
        id: screen02
        x: Constants.width
        y: 0
        visible: false

    }

    states:[
    State{
            name: "initial"
        },

        State{
            name: "turnScreen02"
            PropertyChanges{
                target: screen02
                x:0
                visible: true
            }
        },

        State{
            name: "turnScreen01"
            PropertyChanges {
                target: screen02
                x: Constants.width
                visible: false
            }
        }

    ]
}




/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.33;height:480;width:640}
}
##^##*/
