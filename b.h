#ifndef B_H
#define B_H

#include "a.h"

class B : public A
{
    Q_OBJECT
public:
    explicit B(QObject *parent = 0) : A(parent) {}

    Q_INVOKABLE void myMethod(){
        qDebug("myMethod in B");
    }
    
signals:
    
public slots:
    
};

#endif // B_H
