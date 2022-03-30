import QtQuick 2.15
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.13

Item
{
    Row
    {
        id: column

        anchors.fill: parent
        padding: 10
        spacing: 10

        Rectangle
        {
            width: parent.width * 2 / 3 - 15
            height: parent.height

            radius: 15

            color: "white"
        }

        Calendar
        {
            id: calendar

            width: parent.width / 3 - 15
            height: parent.height

            layer.enabled: true
            layer.effect: OpacityMask
            {
                maskSource: Item
                {
                    width: calendar.width
                    height: calendar.height

                    Rectangle
                    {
                        radius: 15
                        anchors.fill: parent
                    }
                }
            }
        }

    }

}
