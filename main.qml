import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

import "./Elements"
import "./UI"

Window
{
    width: 1280
    height: 1024

    visible: true
    title: "Часовой моря"

    color: "#C4C4C4"


    Column
    {
        anchors.fill: parent

        spacing: 10

        InfoHeader
        {
            width: parent.width
            height: 90
        }

        InfoMain
        {
            width: parent.width
            height: parent.height / 2
        }

        InfoFooter
        {
            width: parent.width
            height: parent.height / 3
        }
    }

}
