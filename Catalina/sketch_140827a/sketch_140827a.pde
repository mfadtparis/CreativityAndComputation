float x = 100;
float y = 80;

float a = 50;
float b = 80;

PImage myImage;

void setup(){
  // instructions that happen once
  size(400,400);
  
  //load the image from file
  myImage = loadImage("preteen.png");
}


void draw(){
  background(255,205,255);
  // repeat forever
  // fill (255,255,0);
  //ellipse( mousey+20, mousex+20, 30, 30)_;
  imageMode(CENTER);
  image(myImage, width/2, height/2,myImage.width*.5,myImage.height*.5);
  fill(255,0,0);
  ellipse( x,y,50,50);
  ellipse( a,b,60,60);
  
  rectMode(CENTER);
  rect(width/2, height/2,30,30);
  
  if( x > width+25 ){
    //true (x is greater than width)
    x = 0;
  }
  

  x += .1;
  println(x);
  b += .5;
  print(b);
 
}

