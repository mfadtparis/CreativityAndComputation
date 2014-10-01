Ball myBubble; 
//Declare an object

//create an array of objects
Ball[] bubbles = new Ball[100];

void setup(){
  //Initialize object

  size(600,600);
  
  stroke(85,225,150);
  fill(200, 255, 235);
  
  myBubble = new Ball();
  
  for( int i = 0; i < bubbles.length; i++){
    bubbles[i] = new Ball();
  }
}

void draw(){
   background(90,170,240);

  myBubble.display();
  myBubble.blow();
  
  for( int i = 5; i < bubbles.length; i++){
    bubbles[i].display();
  }
    
  for( int i = 8; i < bubbles.length; i++){
    bubbles[i].blow();
  }
}

class Ball{
   float x;
   float y;
   float radius;
   float xspeed;
   
   Ball(){
     x = random(width);
     y = random(height);
     radius = random(10,50);
     xspeed = .3;
   }
   
   void display(){
   ellipse(x,y,radius * 1.3,radius * 1.3); 
   }
   
   void blow() {
     x = x + xspeed;
     if (x > width) {
       x = 1;
     }
   }
  
}
