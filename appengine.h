#ifndef APPENGINE_H
#define APPENGINE_H

#include <QObject>

#include <QSerialPortInfo>
#include <QSerialPort>

#include <QString>
#include <QTimer>

class appEngine : public QObject
{
    Q_OBJECT

public:

    explicit appEngine(QObject *parent = 0);


signals:
    // Сигнал для передачи данных в qml-интерфейс
    void sendToQml(QVector<double> count);

public slots:

    void readData();

    void receiveFromQml();

private:

    QString port_name;

    QString message;

    QTimer *timer;

    float humidity, water_temperature, air_temperature, wave_height;

};

#endif // APPENGINE_H
