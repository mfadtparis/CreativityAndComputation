float angle = 0;

void setup (){
  size(500,500);
}

void draw(){
  background(255);
  strokeWeight(5);
  
  angle+=15;
  
  for (int i = 0; i < 360; i+=40){
  float a = radians (i);
  float x = 100*cos(a);
  float y = 100*sin(a);
  // calculates the angle
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  ellipse(x,y,20,20);
  popMatrix();
}
}
