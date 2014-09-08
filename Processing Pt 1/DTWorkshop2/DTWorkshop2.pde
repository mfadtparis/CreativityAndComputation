float x = 185;
float y = 0;
float q = 115;
float t = 200;
float a = 250;
float b = 100;

PImage myImage;

void setup(){
  // instructions that happen once
  size(400,400);

  //load the image from the file
myImage = loadImage("double_rainbow_2.jpg");
}
void draw(){
  background(#34A6D8);
  
  //draw image to screen
  image(myImage,0,0,myImage.width*1.3,myImage.height*1.3);
  
  
  //repeat forever
  //fill(#05656A);
  //ellipse(mouseX+25, mouseY+25, 45, 45);
  
   
  fill(#5539FF);
  ellipse(x,y,25,55);
  fill(#05656A);
  ellipse(x, y, 45, 45);
  
  fill(#5539FF);
  ellipse(q,t,25,75);
  fill(#05656A);
  ellipse(q, t, 35, 35);
  
  fill(#5539FF);
  ellipse(a, b,15,75);
  fill(#05656A);
  ellipse(a, b, 25, 25);
  
  //x += 1; // x = x+1;
  y += 1; // y = y+1;
  //q += 1.8; // q = x+1.8;
  t += 1.8; // y = y+1.8;
  //a += 2.2; // a = a+ 2.2;
  b += 2.2; // b = b+2.2;

  
  //if the value of x is greater than the width of the screen
  //set x to 0
  
  if( x > width+25){
   //(true (x is greater than width)
    x=0;
  }
 
  if( y > height+25){
    y=0;
  }
  
   if( q > width+25){
   //(true (q is greater than width)
    q=0;
  }
 
  if( t > height+25){
    t=0;
  }
    if( a > width+25){
   //(true (a is greater than width)
    x=a;
  }
 
  if( b > height+25){
    b=0;
  }

 
}
