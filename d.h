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
