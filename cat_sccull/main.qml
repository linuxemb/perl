import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow
{
    visible: true

    width: 640
    height: 480
    title: qsTr("Scroll")
    id: root

Row {

    id: tools
     Button {
       id:clear
       text: "clear"
       onClicked: {

           canvas.clear()

           }
     }
      Button {
        id:save
        text: "save"
        onClicked:{
        mouse.save()
         }
       }

    }

    Canvas {
        id: canvas
        anchors.top:tools.bottom
        width:500
            height:500
            property int lastX:0
            property int lastY:0

            function clear() {
                var ctx=  getContext("2d")
                    ctx.reset()
                    canvas.requestPaint()
                    mouse.clear()
            }


         onPaint:
         {
        var ctx= getContext("2d")
             ctx.lineWidth =2
             ctx.strokeStyle = color.red
             ctx.beginPath()
             ctx.moveTo(lastX, lastY)
             lastX = area.mouseX
             lastY =area.mouseY
             ctx.lineTo(lastX,lastY)
             ctx.stroke()

             mouse.test()
           //  mouse.add(lastX, lastY)

         }
         MouseArea {
             id:area
             anchors.fill:parent
//             onClicked: {
//                 Qt.quit()
             onPressed: {
                canvas.lastX = mouseX
                 canvas.lastY = mouseY

             }

             onPositionChanged:  {
                 canvas.requestPaint()
             }

    }




}

}
