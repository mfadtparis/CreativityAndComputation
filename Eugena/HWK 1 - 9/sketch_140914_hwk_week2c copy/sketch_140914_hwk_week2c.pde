float x = 100;
float y = 0;
float speed = 2;

void setup (){
  size (400, 400);
}

void draw (){
  background (255);
  move();
  display();
}

void move (){
  x = x + speed;
  if (x > width){
    x = 0;
  }
}

void display (){
  fill (#000000);
  noStroke();
  rect (x, y, 10, 10);
}
  
  
