import "package:unittest/unittest.dart";
import 'package:unittest/html_config.dart';

import 'package:hades_engine/canvas.dart';
import 'package:hades_engine/circle.dart';
import 'package:hades_engine/point2d.dart';

import "dart:html";

void main()
{
  useHtmlConfiguration();
  
  group("Canvas Tests", () {
    Canvas canvas;
    setUp(() { canvas = new Canvas(400, 400); });
    test("Test if the canvas element exists", () => expect(canvas, isNotNull));
    test("Test if Canvas element exists in HTML", () => expect(getCanvasElement(), isNotNull));
    test("Get the canvas element width of 400", () => expect(canvas.getWidth(), 400));
    test("Get the canvas element height of 400", () => expect(canvas.getHeight(), 400));
    setUp(() { canvas.setBackgroundColor("black"); });
    test("Get the canvas background of black", () => expect(canvas.getBackgroundColor(), "black"));
    
    setUp(() { canvas.addCircle(new Circle()); });
    test("Test if circle at index 0 exists in canvas", () => expect(canvas.getCircle(0), isNotNull));
    setUp(() { canvas.addCircle(new Circle()); });
    test("Get the number of circles in canvas expects two", () => expect(canvas.getNumberOfCircles(), 2));
    
    setUp(() { canvas.getCircle(0).color = "blue"; });
    test("Test if the color for the circle at index 0 is blue", () => expect(canvas.getCircle(0).color, "blue"));
    
    setUp(() { canvas.getCircle(0).position = new Point2D(10, 10); });
    test("Test the position of circle at index 0 is at (10, 10)", () => expect(canvas.getCircle(0).position, new Point2D(10, 10)));
    
    setUp(() { canvas.getCircle(0).position += new Point2D(0,10); });
    test("Test circle transition from (10, 10) to (10, 20)", () => expect(canvas.getCircle(0).position, new Point2D(10,20)));
  });
}

Element getCanvasElement()
{
  return querySelector('canvas');
}