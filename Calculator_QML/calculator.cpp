#include "calculator.h"

double first_num;
bool b_plus = false, b_minus = false, b_div = false , b_mull = false;


Calculator::Calculator(QObject *parent) :
    QObject(parent)
{
}
QString Calculator::getNumber() const
{
    return myString_input;
}

QString Calculator::getNumber_result() const
{
    return myString_result;
}

QString Calculator::getNumber_temp() const
{
    return myString;
}

void Calculator::setNumber(QString value)
{
    myString_input = value;
    emit numberChanged();
}

void Calculator::tempNumber(QString temp)
{
    myString = temp;
    emit numberChanged();
}

void Calculator::saveNumber(QString result)
{
    myString_result = myString_result + result;
    emit numberChanged();
}


void Calculator::press_button(QString str)
{
    setNumber(getNumber() + str);
    saveNumber(getNumber_temp()+ str);
}

void Calculator::print_plus()
{
    first_num = getNumber().toDouble();
    setNumber("");
    saveNumber("+");
    b_plus = true;
}

void Calculator::print_minus()
{
    first_num = getNumber().toDouble();
    setNumber("");
    saveNumber("-");
    b_minus = true;
}

void Calculator::print_div()
{
    first_num = getNumber().toDouble();
    setNumber("");
    saveNumber("÷");
    b_div = true;
}

void Calculator::print_mull()
{
    first_num = getNumber().toDouble();
    setNumber("");
    saveNumber("×");
    b_mull = true;
}

 void Calculator::print_dot()
 {
    QString str;
    str = getNumber();

    if (str == ".")
        {
            int i=0; // нужно для того чтобы пропустить действие
        }
    else
        setNumber(getNumber() + ".");

    if (str == ".")
        {
            int i=0;
        }
    else
        saveNumber(getNumber_result() + ".");
 }

 void Calculator::math_operation()
 {
     first_num = getNumber().toDouble();
 }

 void Calculator::print_equal()
 {
     double result = 0, second_num = 0;
     QString str;

     //second_num = getNumber_result().toDouble();
     second_num = getNumber().toDouble();

     if(b_plus){
         result = first_num + second_num;
         b_plus = false;
         str = QString::number(result);
         setNumber(str);
         saveNumber(" = ");
         saveNumber(str);
     }

     if(b_minus){
         result = first_num - second_num;
         b_minus = false;
         str = QString::number(result);
         setNumber(str);
         saveNumber(" = ");
         saveNumber(str);
     }

     if(b_div){
         if(second_num == 0){
             setNumber("Error!");
             saveNumber("ERROR!");
         }
         else {
             result = first_num / second_num;
             b_div = false;
             str = QString::number(result);
             setNumber(str);
             saveNumber(" = ");
             saveNumber(str);
         }
     }

     if(b_mull){
         result = first_num * second_num;
         b_mull = false;
         str = QString::number(result);
         setNumber(str);
         saveNumber(" = ");
         saveNumber(str);
     }
 }

 void Calculator::print_percent()
 {
     double value;
     QString str;
     value = getNumber().toDouble();
     value *= 0.01;
     str = QString::number(value);
     setNumber(str);
     saveNumber(" ÷ 100 = ");
     saveNumber(str);
 }

 void Calculator::print_opposit()
 {
    double value;
    QString str;
    value = getNumber().toDouble();
    value *= -1;
    str = QString::number(value);
    setNumber(str);
    saveNumber(" -1 = ");
    saveNumber(str);
 }

 void Calculator::print_clear()
 {
     myString_result.clear();
     myString.clear();
     setNumber("");
     tempNumber("");
 }

 void Calculator::print_brackets()
 {
     double value;
     QString str;
     value = getNumber().toDouble();
     str = QString::number(value);
     setNumber("()");
 }



