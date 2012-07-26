#ifndef UVW_H
#define UVW_H

#include <QObject>

class UVW : public QObject
{
    Q_OBJECT
public:
    explicit UVW(QObject *parent = 0) : QObject(parent) {}
    
    Q_INVOKABLE void myMethod(){
        qDebug("myMethod in UVW");
    }

signals:
    
public slots:
    
};

#endif // UVW_H
