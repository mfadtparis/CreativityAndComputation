color c = color(0);
float x = 0;
float y = 100;
float speed = 2;

void setup (){
  size (500, 500);

}

void draw (){
    background (#E5FFF4);
    move ();
    display ();
}

void move (){
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}

void display (){
  // fill (c);
  // rect (x, y, 30, 10);
  
for (int i = 0; i < width; i+=100){
for (int j = 0; j < height; j+=100){
  fill (#EBEDED);
  noStroke();
  pushMatrix ();
  translate (i, 20);
  rect (x, y, x, 40);
  rect (x, j, x, y);
  rect (x, j, x, y);
  popMatrix();
  
  
}
}
}
