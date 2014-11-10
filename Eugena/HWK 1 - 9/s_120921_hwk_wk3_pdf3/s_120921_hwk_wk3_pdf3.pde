import processing.pdf.*;
// press space bar to export the pdf

// boolean to control when pdf gets created
boolean bSaveToPdf = false;

void setup(){
  size(600,600);
}



void draw(){
  
  if (bSaveToPdf == true){
  // start to the pdf; == asks if one thing is equal to another
  beginRecord (PDF, "print03.pdf");
  }
  
  background (255);
  for (int i = 0; i < width; i+=20){
  for (int j = 0; j < height; j+=20){
  
  pushMatrix();
  strokeWeight(5);
  translate (i, j);
  rect (0, 0, 20, 20);
  
  rect (0, 0, 10, 10);
  
  popMatrix();
 
  }
  }
  
  if (bSaveToPdf == true){
  // end the pdf record
      endRecord();
      bSaveToPdf = false;
  }
}


void keyPressed(){
  
  bSaveToPdf = true;
  // this would save if any keys were pressed
}
