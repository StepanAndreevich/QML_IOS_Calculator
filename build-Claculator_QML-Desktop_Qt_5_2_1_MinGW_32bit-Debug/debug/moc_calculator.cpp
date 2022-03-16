/****************************************************************************
** Meta object code from reading C++ file 'calculator.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.2.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../Calculator_QML/calculator.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'calculator.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.2.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_Calculator_t {
    QByteArrayData data[18];
    char stringdata[205];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    offsetof(qt_meta_stringdata_Calculator_t, stringdata) + ofs \
        - idx * sizeof(QByteArrayData) \
    )
static const qt_meta_stringdata_Calculator_t qt_meta_stringdata_Calculator = {
    {
QT_MOC_LITERAL(0, 0, 10),
QT_MOC_LITERAL(1, 11, 13),
QT_MOC_LITERAL(2, 25, 0),
QT_MOC_LITERAL(3, 26, 12),
QT_MOC_LITERAL(4, 39, 3),
QT_MOC_LITERAL(5, 43, 10),
QT_MOC_LITERAL(6, 54, 11),
QT_MOC_LITERAL(7, 66, 9),
QT_MOC_LITERAL(8, 76, 10),
QT_MOC_LITERAL(9, 87, 9),
QT_MOC_LITERAL(10, 97, 11),
QT_MOC_LITERAL(11, 109, 13),
QT_MOC_LITERAL(12, 123, 13),
QT_MOC_LITERAL(13, 137, 11),
QT_MOC_LITERAL(14, 149, 14),
QT_MOC_LITERAL(15, 164, 14),
QT_MOC_LITERAL(16, 179, 15),
QT_MOC_LITERAL(17, 195, 8)
    },
    "Calculator\0numberChanged\0\0press_button\0"
    "str\0print_plus\0print_minus\0print_div\0"
    "print_mull\0print_dot\0print_equal\0"
    "print_percent\0print_opposit\0print_clear\0"
    "print_brackets\0myString_input\0"
    "myString_result\0myString\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Calculator[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       3,   88, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    0,   74,    2, 0x06,

 // methods: name, argc, parameters, tag, flags
       3,    1,   75,    2, 0x02,
       5,    0,   78,    2, 0x02,
       6,    0,   79,    2, 0x02,
       7,    0,   80,    2, 0x02,
       8,    0,   81,    2, 0x02,
       9,    0,   82,    2, 0x02,
      10,    0,   83,    2, 0x02,
      11,    0,   84,    2, 0x02,
      12,    0,   85,    2, 0x02,
      13,    0,   86,    2, 0x02,
      14,    0,   87,    2, 0x02,

 // signals: parameters
    QMetaType::Void,

 // methods: parameters
    QMetaType::Void, QMetaType::QString,    4,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags
      15, QMetaType::QString, 0x00495003,
      16, QMetaType::QString, 0x00495003,
      17, QMetaType::QString, 0x00495003,

 // properties: notify_signal_id
       0,
       0,
       0,

       0        // eod
};

void Calculator::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Calculator *_t = static_cast<Calculator *>(_o);
        switch (_id) {
        case 0: _t->numberChanged(); break;
        case 1: _t->press_button((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->print_plus(); break;
        case 3: _t->print_minus(); break;
        case 4: _t->print_div(); break;
        case 5: _t->print_mull(); break;
        case 6: _t->print_dot(); break;
        case 7: _t->print_equal(); break;
        case 8: _t->print_percent(); break;
        case 9: _t->print_opposit(); break;
        case 10: _t->print_clear(); break;
        case 11: _t->print_brackets(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (Calculator::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&Calculator::numberChanged)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject Calculator::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Calculator.data,
      qt_meta_data_Calculator,  qt_static_metacall, 0, 0}
};


const QMetaObject *Calculator::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Calculator::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_Calculator.stringdata))
        return static_cast<void*>(const_cast< Calculator*>(this));
    return QObject::qt_metacast(_clname);
}

int Calculator::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 12)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 12;
    }
#ifndef QT_NO_PROPERTIES
      else if (_c == QMetaObject::ReadProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = getNumber(); break;
        case 1: *reinterpret_cast< QString*>(_v) = getNumber_result(); break;
        case 2: *reinterpret_cast< QString*>(_v) = getNumber_temp(); break;
        }
        _id -= 3;
    } else if (_c == QMetaObject::WriteProperty) {
        void *_v = _a[0];
        switch (_id) {
        case 0: setNumber(*reinterpret_cast< QString*>(_v)); break;
        case 1: saveNumber(*reinterpret_cast< QString*>(_v)); break;
        case 2: tempNumber(*reinterpret_cast< QString*>(_v)); break;
        }
        _id -= 3;
    } else if (_c == QMetaObject::ResetProperty) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyDesignable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyScriptable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyStored) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyEditable) {
        _id -= 3;
    } else if (_c == QMetaObject::QueryPropertyUser) {
        _id -= 3;
    } else if (_c == QMetaObject::RegisterPropertyMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
#endif // QT_NO_PROPERTIES
    return _id;
}

// SIGNAL 0
void Calculator::numberChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
