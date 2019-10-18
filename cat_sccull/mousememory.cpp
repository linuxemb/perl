#include "mousememory.h"

MouseMemory::MouseMemory(QObject *parent) : QObject(parent)
{

}

void MouseMemory::test()
{
    qDebug("Helloo from cPP\n");
}

void MouseMemory::clear()
{

    qDebug("clearo from cPP\n");
}

void MouseMemory::add(QPointF x, QPointF y)
{
     qDebug("add o from cPP\n");
     x+y;
}
void MouseMemory::add(double x, double y)
{
  qDebug("add o from cPP\n");
}
void MouseMemory::save()
{
      qDebug("save from cPP\n");
}
