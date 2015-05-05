library hades_engine.canvas;

import 'dart:html';
import 'package:hades_engine/circle.dart';
import 'package:hades_engine/point2d.dart';
import 'dart:async';

class Canvas
{
  CanvasElement element;
  String _backgroundColor;
  CanvasRenderingContext2D _context;
  List<Circle> circles;
  
  Canvas([int width = 400, int height = 400])
  {
    this.element = new CanvasElement();
    this.element.setAttribute("width", width.toString());
    this.element.setAttribute("height", height.toString());
    
    _context = this.element.getContext("2d");
    
    document.body.append(this.element);
    
    circles = new List<Circle>();
  }
  
  int getWidth()
  {
    return this.element.width;
  }
  
  int getHeight() {
    return this.element.height;
  }
  
  String getBackgroundColor() {
    return _backgroundColor;
  }
  
  void setBackgroundColor(String backgroundColor) {
    _backgroundColor = backgroundColor;
  }
  
  void addCircle(Circle circle)
  {
    circles.add(circle);
  }
  
  Circle getCircle(int indexOfCircle)
  {
    return circles[indexOfCircle];
  }
  
  void clear() {
    _context.fillStyle = _backgroundColor;
    _context.fillRect(0, 0, this.getWidth(), this.getHeight());
  }
  
  void draw() {
    for (int i = 0; i < this.circles.length; i++)
    {
      this.circles[i].draw(_context);
    }
  }
  
  int getNumberOfCircles() {
    return circles.length;
  }
  
  void animate(num _) {
    this.move();
    this.clear();
    this.draw();
    window.requestAnimationFrame(this.animate);
  }

  void move() {
    for (int i = 0; i < this.circles.length; i++)
    {
      this.circles[i].move(0.1);
    }
  }
}