#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QObject>

#include <QDebug>

class Calculator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString myString_input READ getNumber WRITE setNumber NOTIFY numberChanged)
    Q_PROPERTY(QString myString_result READ getNumber_result WRITE saveNumber NOTIFY numberChanged)
    Q_PROPERTY(QString myString READ getNumber_temp WRITE tempNumber NOTIFY numberChanged)

public:
    explicit Calculator(QObject *parent = 0);

    QString myString_input;
    QString myString_result;
    QString myString;
    QString getNumber() const;
    QString getNumber_result() const;
    QString getNumber_temp() const;
    void setNumber(QString value);
    void saveNumber(QString result);
    void tempNumber(QString temp);

    void math_operation();

signals:
    void numberChanged();

public:
    Q_INVOKABLE void press_button(QString str);

    Q_INVOKABLE void print_plus();
    Q_INVOKABLE void print_minus();
    Q_INVOKABLE void print_div();
    Q_INVOKABLE void print_mull();

    Q_INVOKABLE void print_dot();
    Q_INVOKABLE void print_equal();

    Q_INVOKABLE void print_percent();
    Q_INVOKABLE void print_opposit();
    Q_INVOKABLE void print_clear();
    Q_INVOKABLE void print_brackets();
};

#endif // CALCULATOR_H
