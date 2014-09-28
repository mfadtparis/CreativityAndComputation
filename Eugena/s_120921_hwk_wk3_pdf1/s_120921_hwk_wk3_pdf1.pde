import processing.pdf.*;
// press space bar to export the pdf

// boolean to control when pdf gets created
boolean bSaveToPdf = false;

void setup(){
  size(800,900);
}



void draw(){
  
  if (bSaveToPdf == true){
  // start to the pdf; == asks if one thing is equal to another
  beginRecord (PDF, "print01.pdf");
  }
  
  background (255);
  for (int j = 0; j < height; j+=10){
  
  pushMatrix();
  translate(40,10+j);
  rotate(radians(5));
  strokeWeight(0);
  smooth();
  line (0, 0, 900, 900);
  line (100, 40, 900, 900);
  line (200, 80, 900, 900);
  line (300, 120, 900, 900);
  line (400, 140, 900, 900);
  line (500, 180, 900, 900);
  line (600, 220, 900, 900);
  line (700, 260, 900, 900);
  popMatrix();
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
