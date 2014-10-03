Ball myBubble; // declared an object

// create an array of objects
Ball [] bubbles = new Ball[100];

float a = 0.0;
float s = 0.0;

void setup(){
  
  size(500,500);
  
  // initialize the object
  myBubble = new Ball();
  
  noStroke();
  fill(250,8,222);
  
  for( int i = 0; i < bubbles.length; i++){
    bubbles[i] = new Ball();
  }
}


void draw(){
  
  background(0,245,14);
  
  a = a + 0.005;
  s = cos(a)*2;
  
  myBubble.display();
  
  for( int i = 0; i < bubbles.length; i++){
    bubbles[i].display();
    
  translate(width/2, height/2);
  scale(s); 
  }
  
  //ellipse( myBubble.x, myBubble.y, myBubble.radius*2, myBubble.radius*2);
}


class Ball{
  
    float x;
    float y;
    float radius;
    
    Ball(){
      x = random(width);
      y = random(height);
      radius = random(20,40);
    }
    
    void display(){
      ellipse(x,y,radius*2,radius*2);
    }
  
}
