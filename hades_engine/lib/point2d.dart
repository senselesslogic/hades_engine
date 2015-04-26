library hades_engine.point2d;

import "dart:math";

class Point2D
{
  num _x, _y;
  
  Point2D([num x = 0, num y = 0])
  {
    this.x = x;
    this.y = y;
  }
  
  num get x { return this._x; }
  void set x(num newX) { this._x = newX; }
  
  num get y { return this._y; }
  void set y(num newY) { this._y = newY; }
  
  operator ==(Point2D otherPoint)
  {
    return this.x == otherPoint.x && this.y == otherPoint.y;
  }
}