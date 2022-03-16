import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

ApplicationWindow {
    visible: true
    width: 345
    height: 530
    color: "#024873"
    title: qsTr("Calculator")

//    Button {
//        id: a_button
//        x: 9
//        y: 398
////        width: 146
////        height: 70
//        text: qsTs("A button")

//        style: ButtonStyle {
//            background: Rectangle {
//                implicitWidth: 100
//                implicitHeight: 25
//                border.width: control.activeFocus ? 2 : 1
//                border.color: "#888"
//                radius: 100
//                gradient: Gradient {
//                    GradientStop { position: 0 ; color: control.pressed ? "#ccc" : "#eee" }
//                    GradientStop { position: 1 ; color: control.pressed ? "#aaa" : "#ccc" }
//                }
//            }
//        }
//    }

        Button {
            id: button_0
            x:105
            y:450
            width: 55
            height: 55
            text: qsTr("0")

            style: ButtonStyle { //задаем цвет кнопки
                background: Rectangle {
                    color: control.pressed ? "#04BFAD" : "#B0D1D8"
                    radius: 100
                }

                label: Text { //Задаем стиль шрифта ннфдписи на кнопке
                    renderType: Text.NativeRendering
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Calibri"
                    font.pointSize: 20
                    color: "#024873"
                    text: control.text

                    }
            }

            onClicked: calculator.press_button("0")
        }

    Button {
        id: button_1
        x: 23
        y: 370
        width: 55
        height: 55
        text: qsTr("1")


        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }

        onClicked: calculator.press_button("1")
    }

    Button {
        id: button_2
        x: 105
        y: 370
        width: 55
        height: 55
        text: qsTr("2")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }
//        onClicked: textArea1.text = "Hello" // простой способ передать текст
        onClicked: calculator.press_button("2")
    }

    Button {
        id: button_3
        x: 185
        y: 370
        width: 55
        height: 55
        text: qsTr("3")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }

        onClicked: calculator.press_button("3") //связывание через Q_PROPERTIS
    }

    Button {
        id: button_4
        x: 23
        y: 290
        width: 55
        height: 55
        text: qsTr("4")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }
        onClicked: calculator.press_button("4")
    }

    Button {
        id: button_5
        x: 105
        y: 290
        width: 55
        height: 55
        text: qsTr("5")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }
        onClicked: calculator.press_button("5")
    }

    Button {
        id: button_6
        x: 185
        y: 290
        width: 55
        height: 55
        text: qsTr("6")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }
        onClicked: calculator.press_button("6")
    }

    Button {
        id: button_7
        x: 23
        y: 210
        width: 55
        height: 55
        text: qsTr("7")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }
        onClicked: calculator.press_button("7")
    }

    Button {
        id: button_8
        x: 105
        y: 210
        width: 55
        height: 55
        text: qsTr("8")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }
        onClicked: calculator.press_button("8")
    }

    Button {
        id: button_9
        x: 185
        y: 210
        width: 55
        height: 55
        text: qsTr("9")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#024873"
                text: control.text

                }
        }
        onClicked: calculator.press_button("9")
    }

    Button {
        id: button_10
        x: 185
        y: 450
        width: 55
        height: 55
        text: qsTr(".")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#04BFAD" : "#B0D1D8"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#024873"
                text: control.text

                }
        }
        onClicked: calculator.print_dot()
    }

    Button {
        id: button_11
        x: 265
        y: 450
        width: 55
        height: 55
        text: qsTr("=")
        transformOrigin: Item.Center

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_equal()
    }

    Button {
        id: button_12
        x: 265
        y: 370
        width: 55
        height: 55
        text: qsTr("+")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_plus()
    }

    Button {
        id: button_13
        x: 265
        y: 290
        width: 55
        height: 55
        text: qsTr("-")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_minus()
    }

    Button {
        id: button_14
        x: 265
        y: 210
        width: 55
        height: 55
        text: qsTr("×")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_mull()
    }

    Button {
        id: button_15
        x: 265
        y: 130
        width: 55
        height: 55
        text: qsTr("÷")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_div()
    }

    Button {
        id: button_16
        x: 185
        y: 130
        width: 55
        height: 55
        text: qsTr("%")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_percent()
    }

    Button {
        id: button_17
        x: 105
        y: 130
        width: 55
        height: 55
        text: qsTr("+/-")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 25
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_opposit()
    }

    Button {
        id: button_18
        x: 23
        y: 130
        width: 55
        height: 55
        text: qsTr("()")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F7E425" : "#0889A6"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_brackets()

    }

    Button {
        id: button_19
        x: 25
        y: 450
        width: 55
        height: 55
        text: qsTr("C")

        style: ButtonStyle {
            background: Rectangle {
                color: control.pressed ? "#F25E5E" : "#F8AEAE"
                radius: 100
            }
            label: Text {
                renderType: Text.NativeRendering
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.family: "Calibri"
                font.pointSize: 20
                color: "#FFFFFF"
                text: control.text

                }
        }
        onClicked: calculator.print_clear()

    }

    Rectangle {
        id: rectangle1
        x: 0
        y: -13
        width: 345
        height: 126
        radius: 20
        color: "#04BFAD"

        Text {
            id: input
            x: 24
            y: 61
            width: 294
            height: 56
            color: "#ffffff"
            verticalAlignment: Text.AlignBottom
            horizontalAlignment: Text.AlignRight
            font.family: "Calibri"
            font.pixelSize: 35

            text: calculator.myString_input
        }

        Text {
            id: result
            x: 24
            y: 19
            width: 294
            height: 43
            color: "#ffffff"
            //text: qsTr("Result")
            verticalAlignment: Text.AlignBottom
            horizontalAlignment: Text.AlignRight
            font.family: "Calibri"
            font.pixelSize: 25

            text: calculator.myString_result
        }
    }



//    TextArea {
//        id: textArea1
//        x: 9
//        y: 8
//        width: 328
//        height: 80
////        color: "#ffffff"
//        opacity: 1
//        clip: false
//        font.pointSize: 35
//        font.family: "Arial"
//        horizontalAlignment: TextEdit.AlignRight
//        verticalAlignment: TextEdit.AlignBottom
//        readOnly: true
//        text: calculator.myString
//    }
}
