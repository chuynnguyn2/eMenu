import QtQuick 2.15
import QtQuick.Controls 2.15
import EMenu 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.3

Rectangle {
    property alias turnScreen02Button:turnpage
    property alias chooseButton: chonButton
    property alias spboxValue: spbox.value
    property alias drinkList: drinkList

    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor

    Logo {
        id: logo
        x: 38
        y: 24
    }

    CustomButton {
        id: chonButton
        x: 855
        y: 944
        text: qsTr("Chọn")
    }

    Label {
        id: label
        x: 722
        y: 887
        color: "#ddffffff"
        text: qsTr("Số Lượng:")
        font.pointSize: 17
        font.family: "Tahoma"
    }

    DrinkList {
        id: drinkList
        x: 312
        y: 604
        anchors.fill: parent
    }

    CustomSpinBox{
        id: spbox
        x: 855
        y: 880
    }

    CustomButton {
        id: turnpage
        x: 1089
        y: 944
        width: 318
        height: 58
        text: qsTr("Xem Danh Sách Đã Chọn")
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.33;height:480;width:640}
}
##^##*/
