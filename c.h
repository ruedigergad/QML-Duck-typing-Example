#ifndef C_H
#define C_H

#include "a.h"

class C : public A
{
    Q_OBJECT
public:
    explicit C(QObject *parent = 0) : A(parent) {}

    Q_INVOKABLE void myMethod(){
        A::myMethod();
        qDebug("myMethod in C");
    }
    
signals:
    
public slots:
    
};

#endif // C_H
