import QtQuick 2.0
import QtQuick.Controls 2.4
import QtQuick.Controls.Styles 1.1

Button {
    id: customButton
    property string buttonColor: ""
    property string textColor: ""
    property string buttonText: ""
    property int operationType: calculator.None

    background: Rectangle {
            id: backgroundRect
            color: customButton.down ? Qt.lighter(buttonColor, 2.0) : buttonColor
            radius: 100
        }
    Text {
        id: customText
        anchors.fill: parent
        renderType: Text.NativeRendering
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.family: "Calibri"
        font.pointSize: 25
        color: textColor
        text: buttonText
    }
    text: customText

    onClicked: {
        if(buttonText === ".")
        {
            if(calculator.checkDot())
                return;
        }

        if(operationType === 6) //Нажатие отмены
        {
            reset()
            return
        }
        if(operationType === 4) //Нажатие =
        {
            calculator.setCurrentOperation(operationType)
            return
        }

        if(operationType === 7) //Нажатие +/-
        {
            calculator.changeDirectionNumber()
            return
        }

        if(operationType === 8) //Нажатие %
        {
            calculator.calculatePersent()
            return
        }

        if(operationType != 8 && operationType != 5 && !calculator.needSecond())
        {
            calculator.setCurrentOperation(operationType)
            return
        }

        calculator.setNumber(buttonText)
        setUserText(calculator.number())
    }
}
