#include "calculator.h"

Calculator::Calculator(QObject *parent) :
    QObject(parent)
{
}

void Calculator::reset()
{
    m_number.clear();
    m_firstNum = 0;
    m_secondNum = 0;
    m_currentOperation = Operation::None;
    m_needSecond = false;
}

void Calculator::clear()
{
    m_number.clear();
}

bool Calculator::needSecond()
{
    return m_needSecond;
}

void Calculator::setNeedSecond(bool isNeed)
{
    m_needSecond = isNeed;
}

QString Calculator::number()
{
    return m_number;
}

void Calculator::setNumber(QString number)
{
    m_number += number;
    if(m_currentOperation == Operation::None)
    {
        m_firstNum = m_number.toDouble();
    }
    else
    {
        m_secondNum = m_number.toDouble();
    }
}

int Calculator::currentOperation()
{
    return m_currentOperation;
}

void Calculator::setCurrentOperation(int operation)
{
    if(operation == Operation::Equal)
    {
        calculate();
        return;
    }
    m_currentOperation = operation;
    m_needSecond = true;
    clear();
}

void Calculator::calculate()
{
    double result = 0;
    switch(m_currentOperation)
    {
        case Operation::Addition:
        {
            result = m_firstNum + m_secondNum;
        }
            break;
        case Operation::Subtraction:
        {
            result = m_firstNum - m_secondNum;
        }
            break;
        case Operation::Multiplication:
        {
            result = m_firstNum * m_secondNum;
        }
            break;
        case Operation::Division:
        {
            result = m_firstNum / m_secondNum;
        }
            break;

        default:
            break;
    }

    m_firstNum = result;
    QString res = QString::number(result);
    emit resultReady(res);
}

void Calculator::changeDirectionNumber()
{
    if(!needSecond())
    {
        m_firstNum = -m_firstNum;
        QString res = QString::number(m_firstNum);
        emit resultReady(res);
    }
    else
    {
        m_secondNum = -m_secondNum;
        QString res = QString::number(m_secondNum);
        emit resultReady(res);
    }
}

void Calculator::calculatePersent()
{
    double result = m_firstNum / 100;
    m_firstNum = result;
    QString res = QString::number(result);
    emit resultReady(res);
}

bool Calculator::checkDot()
{
    if(m_number.contains("."))
        return true;
    return false;
}
