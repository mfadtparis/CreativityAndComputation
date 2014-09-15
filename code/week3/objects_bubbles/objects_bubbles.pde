Ball [] balls = new Ball[200];

void setup(){
  size(400,400);
  
  for(int i = 0; i < balls.length; i++){
    balls[i] = new Ball();
  }
}

void draw(){
    background(#D8F5FF);
    for(int i = 0; i < balls.length; i++){
      balls[i].display();
    }
}


class Ball{
  
  float x, y;
  color c;
  float radius;
  float pct;
  
  Ball(){
    x = random(width);
    y = random(height);
    radius = random(10,50);
    c = color(random(50),random(100),random(255),40);
    pct = random(.00025,.0025);
  }
  
  void display(){
    noStroke();
    float newRadius = radius + sin( PI*(millis()*pct) );
    fill(c);
    ellipse(x,y,newRadius*2,newRadius*2);
  }
  

  
  
}
