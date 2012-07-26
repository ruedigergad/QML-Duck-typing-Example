/*
 * Copyright 2012, Ruediger Gad <r.c.g@gmx.de>
 *
 * This work is licensed under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/3.0/
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.
 *
 */

#ifndef D_H
#define D_H

#include <QObject>

class D : public QObject
{
    Q_OBJECT
public:
    explicit D(QObject *parent = 0) : QObject(parent) {}
    
signals:
    
public slots:
    
};

#endif // D_H
