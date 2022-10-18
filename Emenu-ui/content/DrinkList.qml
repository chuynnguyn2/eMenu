import QtQuick 2.15
import QtQuick.Controls 2.15
import EMenu 1.0
import QtGraphicalEffects 1.0

Item {
    width: Constants.width
    height: Constants.height

    property alias pickedDrink: imgView.pickeddrink

    Label{
        id: direction
        x: 1450
        y: 578
        Text{
            id: __text
            text: "Kéo sang để chọn"
            font.family: "Tahoma"
            font.pointSize: 20
        }
        visible: imgView.currentIndex===imgView.count-1? false : true
        Image{
            x: 34
            width: 124
            height: 103
            source: "images/right-arrow.png"
            anchors.topMargin: 0
            anchors.top: parent.bottom

        }
        LinearGradient{
            anchors.fill: __text
            source: __text
            gradient: Gradient {
                        GradientStop { position: 0; color: "#4ff8f6" }
                        GradientStop { position: 1; color: "#f999f4" }
            }
        }
    }

    Component{
        id: imgDelegate
        Image{
            id: img
            source: "image://pictures/"+index
            anchors.top: parent.top
            anchors.topMargin: 130
            width: 320
            height: 320
            Text{
                id:__imgtext
                anchors.top: img.bottom
                anchors.topMargin: 30
                anchors.horizontalCenter: img.horizontalCenter
                text: model.name
                font.pixelSize: 35
                font.family: "VNI-Truck"
                color: "white"

                LinearGradient{
                    anchors.fill: __imgtext
                    source: __imgtext
                    gradient: Gradient {
                                GradientStop { position: 0; color: "#4ff8f6" }
                                GradientStop { position: 1; color: "#f999f4" }
                    }
                }
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    imgView.currentIndex = index
                    textView.currentIndex = imgView.currentIndex
                }
            }
        }
    }
    ListView{
        property var pickeddrink
        id: imgView
        height: 550
        highlightMoveDuration: 600
        highlightMoveVelocity: 400
        width: 960
        snapMode: ListView.SnapOneItem
        x: 425
        y: 312
        orientation: ListView.Horizontal
        clip: true
        rebound: Transition {
                 NumberAnimation {
                     properties: "x,y"
                     duration: 1000
                     easing.type: Easing.InOutBack
                 }
        }
        highlight: Image{
            source: "images/hightlightImg.jpg"
            anchors.top: parent.top
        }
        model: drinkListModel
        delegate: imgDelegate
        onCurrentIndexChanged: {
            pickeddrink = imgView.model.getName(imgView.currentIndex)
        }
    }

    Component{
        id:textDelegate
        Label{
            text: model.description
            verticalAlignment: Text.AlignTop
            wrapMode: Text.WordWrap
            font.family: "Times New Roman"
            font.weight: Font.Light
            font.pointSize: 14
            color: "#dde4e5f4"
            width: 600
            lineHeight: 1.7
        }
    }
    ListView{
        id: textView
        orientation: ListView.Horizontal
        interactive: false
        width: 600
        height: 250
        clip: true
        x: 979
        y: 100
        model: drinkListModel
        delegate: textDelegate
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}
}
##^##*/
