import QtQuick 2.0
import EMenu 1.0

ApplicationFlowForm {
    id: applicationFlow

    screen01.turnScreen02Button.onClicked:{
        applicationFlow.state = "turnScreen02"
    }
    screen02.turnScreen01Button.onClicked: {
        applicationFlow.state = "turnScreen01"
    }
    screen01.chooseButton.onClicked: {
        var component;
            var chosendrink;
            component = Qt.createComponent("ChosenDrink.qml");
            if (component.status === Component.Ready){
                chosendrink = component.createObject(screen02.screen02list,{drinkName : screen01.drinkList.pickedDrink, qty : screen01.spboxValue});
            }
    }
    }


/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}
}
##^##*/
