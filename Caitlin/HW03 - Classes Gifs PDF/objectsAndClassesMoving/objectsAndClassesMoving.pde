
Ball myBubble; //declares an object

//create an array of objects - does not initialize each object yet
Ball [] bubbles = new Ball[100];

void setup(){
  size(300,300);
  

myBubble = new Ball();   //initializes the object
  
//initialize all the balls in declared array
for(int i=0; i < bubbles.length; i++){
  bubbles[i] = new Ball();
}

}


void draw(){
//  ellipse(myBubble.x, myBubble.y, myBubble.radius*2, myBubble.radius*2);
//  myBubble.display();
//  myBubble.x = myBubble.x + myBubble.xSpeed;
  
background(255 / (float)height * mouseY);
for (int i=0; i< bubbles.length; i++){
   bubbles[i].display();
   bubbles[i].move();

}
}
class Ball{
  float x;
  float y;
  float radius;
  float shade;
  float xSpeed;
  float ySpeed;
  
  
  Ball(){
    x = random(width);
    y = random(height);
    radius = random(20,40);
    shade = random(255);
    xSpeed = random(-1,1);
    ySpeed = random(-1,1);
  }
  
 //custom function inside the class
 void display(){
   fill(shade);
   ellipse(x,y,radius*2,radius*2);
 }
 
 void move(){
   x += xSpeed;
   y += ySpeed;
   
 }
 }


