// practice with pshape using processing examples
PShape rectangle;

void setup(){
  size(640, 360, P2D);
  rectangle = createShape(RECT, 0, 0, 100, 50);
  rectangle.setStroke(color(255));
  rectangle.setStrokeWeight(3);
  rectangle.setFill(color(127));
}

void draw(){
  background(51);
  translate(mouseX, mouseY);
  shape(rectangle);
  
}


