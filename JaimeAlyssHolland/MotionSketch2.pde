float px, py, px2, py2;
float angle, angle2;
float x = 150;
float y = 150;

void setup(){
  size(600, 600);
  background(225);
}

void draw(){
  float angle = atan2(mouseY - y, mouseX - X);
  pushMatrix();
  translate(300,300);
  rotate(angle);
  for (int i = 0; i < 360; i +=30){
  fill(225);
  ellipse(100*cos(angle), 100*sin(angle), 20,20);
  }
  popMatrix();
  
  x += .1 * (mouseX - x);
  y += .1 * (mouseY - y);

}
