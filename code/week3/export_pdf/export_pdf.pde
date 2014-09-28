import processing.pdf.*;
// press space bar to export the pdf

// boolean to control when pdf gets created
boolean saveToPdf = false;

void setup(){
  size(400,400);
}

void draw(){
  
  // leave at start of draw
  if(saveToPdf == true){
    beginRecord(PDF,"mysketch-###.pdf");
  }
  
  
 // put all your visuals/geometry here
  background(255);
  fill(0,255,255);
  ellipse(200,200,40,40);
  
  
  // this stays at the end of the draw
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
