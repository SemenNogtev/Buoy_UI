import QtQuick 2.15
import "../Elements"

Item
{
    Row
    {
        id: column

        anchors.fill: parent
        padding: 10
        spacing: 10

        CustomChart
        {
            width: parent.width * 2 / 3 - 15
            height: parent.height

            chartColor: "red"
        }

        Rectangle
        {
            width: parent.width / 3 - 15
            height: parent.height

            radius: 15
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:4}
}
##^##*/
