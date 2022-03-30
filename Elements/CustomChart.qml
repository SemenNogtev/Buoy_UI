import QtQuick 2.15
import QtCharts 2.15
import QtGraphicalEffects 1.12

Item
{
    property string chartTitle: chartTitle
    property color chartColor: chartColor
    /*Glow {
        id:glow
        anchors.fill: chartView
        radius: 18
        samples: 37
        color: chartColor
        source: chartView
        transparentBorder: true;
    }

    RadialBlur {
        anchors.fill: chartView
        source: chartView
        angle: 360
        samples: 20
    }

    ZoomBlur {
        anchors.fill: chartView
        source: chartView
        length: 2
        samples: 20
    }*/

    ChartView {
          id:chartView
          width: parent.width
                height: parent.height
                backgroundColor: "transparent"
                legend.visible: false
                antialiasing: true
                //layer.enabled: true
                 animationDuration : 1000
                 animationOptions: ChartView.AllAnimations;
               //  animationEasingCurve.bezierCurve : [ 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.78, 0.93, 0.95, 1, 1 ]
                 ValueAxis
                 {
                     id: valueAxisY

                     titleFont.pointSize: 20
                     titleFont.family: "Verdana"

                     gridLineColor: "black"
                     titleText: "Высота волны, м"
                     min: 0
                     max: 2
                     labelsFont.pointSize: 15
                 }

                 ValueAxis
                 {
                     id: valueAxisX

                     titleFont.pointSize: 20
                     titleFont.family: "Verdana"

                     titleText: "Время, ч"
                     min: 0
                     max: 50
                     labelsFont.pointSize: 15
                     gridLineColor: "black"
                 }

                 SplineSeries
                 {
                     id: seriesY

                     color: "red"
                     axisX: valueAxisX
                     axisY: valueAxisY
                     width: 4
                 }
             }

             Component.onCompleted:
             {
                 for (var i = 0; i <= 50; i++)
                 {
                     seriesY.append(i, Math.random() + Math.random());

                 }
             }

             MouseArea{
                 anchors.fill: parent
                 onClicked: {
                     valueAxisX.max += 1

                     for (var i = 0; i <= 1; i++)
                 {
                     seriesY.append(i+valueAxisX.max-1, Math.random() + Math.random());

                 }
                 }
             }

//               LineSeries {
//                            axisX: ValueAxis{id : gg;   min: 0; max: 100 ;  visible: true ;color :"#00ffffff";gridLineColor: "black";labelsColor :"black";/*labelsVisible:false; gridVisible: false*/ }
//                            axisY: ValueAxis{id: ggg;  min: 0; max: 100 ;  visible: true ;gridLineColor: "black";color :"black";/*labelsVisible:false; gridVisible: false*/}
//                            width:5
//                            color: chartColor
//                            XYPoint { x: 0; y: 0 }
//                            XYPoint { x: 10.1; y: 20.1 }
//                            XYPoint { x: 11.9; y: 31.3 }
//                            XYPoint { x: 12.1; y: 72.1 }
//                            XYPoint { x: 32.9; y: 14.9 }
//                            XYPoint { x: 35.4; y: 30.0 }
//                            XYPoint { x: 38.4; y: 20.0 }
//                            XYPoint { x: 40.1; y: 40.3 }
//                            XYPoint { x: 80.1; y: 60.3 }
//                            XYPoint { x: 90.1; y: 50.3 }
//                            XYPoint { x: 95.1; y: 80.3 }
//                }
//}
/*
    ChartView {
        width: parent.width/2
              height: parent.height/2
              backgroundColor: "transparent"
              legend.visible: false
        ValueAxis
        {
            id: valueAxisY

            gridLineColor: "black"
            titleText: "Высота волны"
            titleFont: Qt.font({pointSize: 15, bold: true});
            min: 0
            max: 2
            labelsFont.pointSize: 15
        }

        ValueAxis
        {
            id: valueAxisX

            titleText: "Время"
            titleFont: Qt.font({pointSize: 15, bold: true});
            min: 0
            max: 50
            labelsFont.pointSize: 15
            gridLineColor: "black"
        }

        LineSeries
        {
            id: seriesY

            color: "red"
            axisX: valueAxisX
            axisY: valueAxisY
            width: 4
        }
    }

    Component.onCompleted:
    {
        for (var i = 0; i <= 50; i++)
        {
            //gg.append(i, Math.random() + Math.random());
            //ggg.append(i, Math.random() + Math.random());

        }
    }
    */

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
