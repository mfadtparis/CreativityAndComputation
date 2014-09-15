float x;
float y;

void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
}

void draw(){
  background(150);
  
  float angle = atan2(mouseY-y,mouseX-x);

  x += .01 * (mouseX-x);
  y += .01 * (mouseY-y);
  
  // another way to write the same:
  //x = .9 * x + .1 * mouseX;
  //y = .9 * y + .1 * mouseY;
  
  rectMode(CENTER);
  pushMatrix();
    translate(x,y);
    rotate(angle);
    rect(0,0,100,100);
  popMatrix();
  
  
}
