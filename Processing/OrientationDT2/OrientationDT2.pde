int x = 35;
int y = 80;

void setup(){
  // instructions that happen once
  size(400,400);
}

void draw(){
  background(#C9E33E);
  //repeat forever
  fill(#05656A);
  ellipse(mouseX+25, mouseY+25, 45, 45);
  fill(#A570A1);
  ellipse(x,y,75,75);
}
