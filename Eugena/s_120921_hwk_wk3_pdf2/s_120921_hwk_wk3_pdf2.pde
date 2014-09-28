import processing.pdf.*;
// press space bar to export the pdf

// boolean to control when pdf gets created
boolean bSaveToPdf = false;

void setup(){
  size(800,800);
}



void draw(){
  
  if (bSaveToPdf == true){
  // start to the pdf; == asks if one thing is equal to another
  beginRecord (PDF, "print02.pdf");
  }
  
  background (255);
  float w = (width/2);
  float h = (height/2);

  for (int i = 0; i < width; i+=20){
  for (int j = 0; j < height; j+=20){
  
  pushMatrix();
  strokeWeight(0);
  translate(i,j);
  ellipse(w, 0, 40, 40);
  translate (i, 10);
  ellipse(0, 0, 20, 20);
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
