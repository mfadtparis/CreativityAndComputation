import processing.pdf.*;                     
// press space bar to export the pdf        

 
// boolean to control when pdf gets created
boolean saveToPdf = false;

//int x = 100;
//int y = 80;



PImage myImage;
//when we write x in program integrates it for value 100

void setup(){
  //instructions that happen once
  size(343,325);
  //FrameRate(30);
  //load image from file
  myImage = loadImage("Things6.jpg");
}

void draw(){
  
  // leave at start of draw
  if(saveToPdf == true){
    beginRecord(PDF,"Things6.pdf"); 
  }
  
  //repeat forever
  background(255);
  
  //draw image to screen
  image(myImage,0,0,myImage.width*.8,myImage.height*.8);
  
 //y +=1; //y= y+1
  //can invert the x and y
  
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
