
 
int a = 0;
float b = 0.0;
int c = 0;
float d = 0.0;
int e = 0;
float f = 0.0;

void setup() {
  size(640, 360);
  stroke(255);
  frameRate(30);
}

void draw() {
  background(250, 250, 100);
  
  a = a + 1;
  b = b + 1.5;
  c = c + 2;
  d = d + 2.5;
  e = e + 3;
  f = f + 2.8;
  
  stroke(61, 20, 247);
  //cobalt
  line(a, 0, 2/a, 300);
  
  stroke(140, 185, 235);
  //sky blue
  line(b, 0, 2/b, 250);
  
  stroke(13, 165, 191);
  //teal
  line(c, 0, 2/c, 200);
  
  stroke(120, 200, 125);
  //green
  line(d, 0, 2/d, 150);

  stroke(193, 31, 183);
  //fuschia
  line(e, 0, 2/e, 100);

  stroke(125, 25, 155);
  //purple
  line(f, 0, 2/f, 50);
  
  if(a > width) {
    a = 0;
  }
  if(b > width) {
    b = 0;
  }
  if(c > width) {
    c = 0;
  }
  if(d > width) {
    d = 0;
  }
   if(e > width) {
    e = 0;
  }
   if(f > width) {
    f = 0;
  }
}

