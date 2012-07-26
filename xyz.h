#ifndef XYZ_H
#define XYZ_H

#include <QObject>

class XYZ : public QObject
{
    Q_OBJECT
public:
    explicit XYZ(QObject *parent = 0) : QObject(parent) { foo = 1701; }

    Q_INVOKABLE int myMethod(){
        qDebug("myMethod in XYZ");
        return foo++;
    }

signals:
    
public slots:

private:
    int foo;
    
};

#endif // XYZ_H
