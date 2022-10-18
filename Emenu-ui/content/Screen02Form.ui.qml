import QtQuick 2.15
import EMenu 1.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Rectangle {
    property alias turnScreen01Button: turnpage
    property alias screen02list: drinklist

    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    CustomButton{
        id: turnpage
        x: 73
        y: 52
        text: qsTr("Quay Lại Menu")
    }

    ScrollView{
        x: 560
        y: 264
        width: 800
        height: 730
        ColumnLayout{
            id: drinklist
            anchors.fill: parent
            spacing: 20
        }
    }

    Text {
        id: text1
        y: 118
        color: "white"
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Danh Sách Đồ Uống Đã Chọn")
        anchors.horizontalCenterOffset: 0
        font.family: "Tahoma"
        font.pointSize: 50
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/
