#pragma once

#include <QObject>
#include <QDebug>

class Calculator : public QObject
{
    Q_OBJECT

public:
    explicit Calculator(QObject *parent = nullptr);

    enum Operation
    {
        Addition = 0,
        Subtraction = 1,
        Multiplication = 2,
        Division = 3,
        Equal = 4,
        Number = 5,
        Cansel = 6,
        DirectionNumber = 7,
        Percent = 8,
        None = 9
    };
    Q_ENUM(Operation);

    Q_INVOKABLE void reset();
    Q_INVOKABLE void clear();
    Q_INVOKABLE bool needSecond();
    Q_INVOKABLE void setNeedSecond(bool isNeed);

    Q_INVOKABLE QString number();
    Q_INVOKABLE void setNumber(QString number);

    Q_INVOKABLE int currentOperation();
    Q_INVOKABLE void setCurrentOperation(int operation);

    void calculate();
    Q_INVOKABLE void changeDirectionNumber();
    Q_INVOKABLE void calculatePersent();

    Q_INVOKABLE bool checkDot();

signals:
    void numberChange();
    void currentOperationChanged();
    void resultReady(QString result);

private:
    double m_firstNum = 0;
    double m_secondNum = 0;
    QString m_number = "";
    int m_currentOperation = Operation::None;
    bool m_needSecond = false;
};
