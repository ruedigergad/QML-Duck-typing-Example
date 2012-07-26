/*
 * Copyright 2012, Ruediger Gad <r.c.g@gmx.de>
 *
 * This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.
 *
 */

#ifndef A_H
#define A_H

#include <QObject>

class A : public QObject
{
    Q_OBJECT
public:
    explicit A(QObject *parent = 0) : QObject(parent) {}

    Q_INVOKABLE virtual void myMethod(){
        qDebug("myMethod in A.");
    }
    
signals:
    
public slots:
    
};

#endif // A_H
