Ball myBubble; // declared an object

// create an array of objects
Ball [] bubbles = new Ball[100];

void setup(){
  
  size(300,300);
  
  // initialize the object
  myBubble = new Ball();
  
  for( int i = 0; i < bubbles.length; i++){
    bubbles[i] = new Ball();
  }
}


void draw(){
  
  myBubble.display();
  
  for( int i = 0; i < bubbles.length; i++){
    bubbles[i].display();
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
