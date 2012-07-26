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
