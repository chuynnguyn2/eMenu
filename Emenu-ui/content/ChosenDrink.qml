import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import EMenu 1.0

Rectangle{
    property alias qty: qty.value
    property alias drinkName: drinkName.text

    width: 800
    height: 50
    color: Constants.backgroundColor

    Text{
        id: drinkName
        anchors.left: parent.left
        anchors.horizontalCenter: parent.horizontalCenter
        font.family: "VNI-Truck"
        color: "white"
        font.pointSize: 25
    }

    CustomSpinBox{
        id: qty        
        anchors.right: parent.right
        width: 347
        from: 0

    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
