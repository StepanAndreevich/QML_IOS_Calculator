import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

ApplicationWindow {
    id: window
    visible: true
    width: 454
    height: 720
    //maximumHeight: height
    //maximumWidth: width
    minimumHeight: height
    minimumWidth: width
    color: "black"
    title: qsTr("Calculator")
    property string operationColorBtn: "#ff9f0a"
    property string settingsColorBtn: "#a5a5a5"
    property string numbersColorBtn: "#343434"
    property int buttonWidth: 100
    property int buttonHeight: 100

    function reset() {
        outputArea.userText = "0"
        calculator.reset()
    }

    function clear() {
        outputArea.userText = "0"
        calculator.clear()
    }

    function setUserText(text) {
        outputArea.userText = text
    }

    Connections {
        target: calculator
        onResultReady:{
            setUserText(result)
        }
    }

    Column {
        id: operationsButton
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: numbersButton.right
        anchors.margins: 10
        spacing: 10
        Repeater {
            model: operationModel
            delegate:
                CustomButton {
                    width: buttonWidth
                    height: buttonWidth
                    buttonText: model.text
                    buttonColor: operationColorBtn
                    textColor: "white"
                    operationType: model.operation
                }
        }
    }

    ListModel {
        id: operationModel
        ListElement {
            text: "÷"
            operation: 3
        }
        ListElement {
            text:  "×"
            operation: 2
        }
        ListElement {
            text: "-"
            operation: 1
        }
        ListElement {
            text: "+"
            operation: 0
        }
        ListElement {
            text: "="
            operation: 4
        }
    }


    Row {
        id: settingsButton
        anchors.left: parent.left
        anchors.bottom: numbersButton.top
        anchors.margins: 10
        spacing: 10
        Repeater {
            model: settingsModel
            delegate: CustomButton {
                width: buttonWidth
                height: buttonWidth
                buttonText: model.text
                buttonColor: settingsColorBtn
                textColor: "black"
                operationType: model.operation
            }
        }
    }
    ListModel {
        id: settingsModel
        ListElement {
            text: "C"
            operation: 6
        }
        ListElement {
            text:  "+/-"
            operation: 7
        }
        ListElement {
            text: "%"
            operation: 8
        }
    }

    Grid {
        id: numbersButton
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 10
        columns: 3
        rows: 4
        columnSpacing: 10
        rowSpacing: 10
        Repeater {
            model: ["7", "8", "9", "4", "5", "6", "1", "2", "3", "0", "."]
            CustomButton {
                width: buttonWidth
                height: buttonWidth
                buttonText: modelData
                buttonColor: numbersColorBtn
                textColor: "white"
                operationType: 5
            }
        }
    }

    OutputArea {
        id: outputArea
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: settingsButton.top
        anchors.rightMargin: 30
        anchors.bottomMargin: 10
    }
}
