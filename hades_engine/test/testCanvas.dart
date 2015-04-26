import "package:hades_engine/canvas.dart";
import "package:hades_engine/circle.dart";
import 'package:hades_engine/point2d.dart';

void main()
{
  // Test one
  Canvas canvas = new Canvas();
  canvas.setBackgroundColor("black");
  canvas.clear();
  Circle blueCircle = new Circle()
      ..color = "blue"
      ..position = new Point2D(10, 10);
  canvas.addCircle(blueCircle);
  Circle redCircle = new Circle()
      ..color = "red"
      ..position = new Point2D(100, 100);
  canvas.addCircle(redCircle);
  
  canvas.draw();
}