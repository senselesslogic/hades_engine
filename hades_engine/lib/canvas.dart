library hades_engine.canvas;

import 'dart:html';

void createCanvasElement()
{
  CanvasElement canvas = new CanvasElement();
  canvas.setAttribute("width", "400");
  canvas.setAttribute("height", "400");
  
  document.body.append(canvas);
}
class Canvas
{
  Canvas()
  {
    
  }
}