/*
 * Copyright 2012, Ruediger Gad <r.c.g@gmx.de>
 *
 * This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.
 *
 */

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
