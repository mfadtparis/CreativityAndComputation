import processing.pdf.*;

boolean saveToPdf = false;

void setup() {
  size(600,600);
}
 
void draw() {
    if(saveToPdf == true){
    beginRecord(PDF,"RecursiveCirclesinCircles.pdf");
    }
    
  background(90, 180, 245);
    stroke(190, 100, 10);

  drawCircle(width/2,height/2,300);
  
  if(saveToPdf == true){
    endRecord();
    saveToPdf = false;
  }
}

void keyPressed(){
  if( key == ' ' ){
    saveToPdf = true;
  }
}
 
void drawCircle(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 10) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y , radius/2);
    drawCircle(x, y, radius/2);
 
  }
}

