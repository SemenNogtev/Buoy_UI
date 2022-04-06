import QtQuick 2.15
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.13

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


        Custom3dStudio
        {
            id: buoy_view

            width: parent.width / 3 - 15
            height: parent.height

            presentation_path: "qrc:/3D/buoy/buoy.uia"

            layer.enabled: true
            layer.effect: OpacityMask
            {
                maskSource: Item
                {
                    width: buoy_view.width
                    height: buoy_view.height

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

/*##^##
Designer {
    D{i:0;formeditorZoom:4}
}
##^##*/
