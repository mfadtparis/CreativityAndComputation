int x;
int y;
float outsideRadius = 150;
float insideRadius = 100;

import processing.pdf.*;

boolean SaveToPdf = false;

void setup() {
  size(640, 360);
  x = width/2;
  y = height/2;
}

void draw(){
  if(SaveToPdf == true){
    // start to the pdf
    beginRecord(PDF,"mysketch-###.pdf");
  }
  
  background(95,69,245);
  
  int numPoints = int(map(mouseX, 0, width, 6, 60));
  float angle = 0;
  float angleStep = 180.0/numPoints;
  
  beginShape(TRIANGLE_STRIP);
  for(int i = 0; i <= numPoints; i++) {
    float px = x + cos(radians(angle)) * outsideRadius;
    float py = y + sin(radians(angle)) * outsideRadius;
    angle += angleStep;
    vertex(px, py);
    px = x + cos(radians(angle)) * insideRadius;
    py = y + sin(radians(angle)) * insideRadius;
    vertex(px, py);
    angle += angleStep;
  }
  
  if(SaveToPdf == true){
    // end the pdf record
    endRecord();
    SaveToPdf = false;
  }
  endShape();
}
void keyPressed(){
  SaveToPdf = true;
}
  
