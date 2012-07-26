/*
 * Copyright 2012, Ruediger Gad <r.c.g@gmx.de>
 *
 * This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.
 *
 */

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
