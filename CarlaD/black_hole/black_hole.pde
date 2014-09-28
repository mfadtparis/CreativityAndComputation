void setup() {
  size(1500,1500);
   background(0);
}
 
void draw() {
  //background(255);
  PVector mouseLoc = new PVector(mouseX, mouseY);
  PVector centerLoc = new PVector(width/2, height/2);
  PVector v = PVector.sub(mouseLoc, centerLoc);
  v.normalize();
  v.mult(90);
   
  PVector xaxis = new PVector(75,0);
  drawVector(v, centerLoc, 1.0);
  drawVector(xaxis, centerLoc, 1.0);
   
  float theta = PVector.angleBetween(v, xaxis);
}
 
void drawVector(PVector v, PVector loc, float scayl) {
   
  pushMatrix();
  float arrowsize = 6;
  translate(loc.x, loc.y);
  stroke(5,30);
  smooth();
  //strokeWeight(1);
  rotate(v.heading2D());
  float len = v.mag()*scayl;
  line(0, 0, len-arrowsize, len+arrowsize);
  //fill(BLUR,3);
 // fill(THRESHOLD);
 rect(len, 0, random(arrowsize*305), random(arrowsize));
//line(len-arrowsize, len+arrowsize, 10,220);
 //line(len+arrowsize, len-arrowsize, 220,220);
  popMatrix();
  
  
}
