library hades_engine.circle;

import "dart:html";
import "dart:math";

import 'package:hades_engine/point2d.dart';

class Circle
{
  String _color;
  Point2D _position;
  Point2D _velocity;
  Point2D _acceleration;
  
  Circle(){
    this._position = new Point2D(0,0);
    this._velocity = new Point2D(0,0);
    this._acceleration = new Point2D(0,0);
  }
  
  Circle.withInitialValues(Point2D initialPosition, Point2D initialVelocity, Point2D initialAcceleration) {
    this._position = initialPosition;
    this._velocity = initialVelocity;
    this._acceleration = initialAcceleration;
  }
  
  String get color { return _color; }
  void set color(String newColor) { _color = newColor; }
  
  Point2D get position { return _position; }
  void set position(Point2D newPosition) { _position = newPosition; }
  
  Point2D get velocity { return _velocity; }
  void set velocity(Point2D newPosition) { _velocity = newPosition; }
    
  Point2D get acceleration { return _acceleration; }
  void set acceleration(Point2D newPosition) { _acceleration = newPosition; }
  
  void move(num time)
  {
    this.velocity += this.acceleration * time; // (m/s^2 * s) = (m/s)
    this.position += this.velocity * time; // (m/s * s) = m
  }
  
  void draw(CanvasRenderingContext2D context)
  {
    context.fillStyle = this.color;
    context.beginPath();
    context.arc(this.position.x, this.position.y, 10, 0, 2*PI);
    context.fill();
    context.closePath();
  }
}