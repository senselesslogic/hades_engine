library hades_engine.circle;

import "dart:html";
import "dart:math";

import 'package:hades_engine/point2d.dart';

class Circle
{
  String _color;
  Point2D _position;
  
  Circle();
  
  String get color { return _color; }
  void set color(String newColor) { _color = newColor; }
  
  Point2D get position { return _position; }
  void set position(Point2D newPosition) { _position = newPosition; }
  
  void draw(CanvasRenderingContext2D context)
  {
    context.fillStyle = this.color;
    context.beginPath();
    context.arc(this.position.x, this.position.y, 10, 0, 2*PI);
    context.fill();
    context.closePath();
  }
}