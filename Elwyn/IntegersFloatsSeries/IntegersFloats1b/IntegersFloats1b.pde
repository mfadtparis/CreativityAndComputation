

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
  background(185, 250, 200);

  a = a + 2;
  //cobalt
  b = b + 2.5;
  //cobalt
  c = c + 3;
  //teal
  d = d + 3.5;
  //teal
  e = e + 4;
  //fuschia
  f = f + 4.5;
  //fuschia

  stroke(61, 20, 247);
  //cobalt
  line(a, 0, 2/a, height);
  stroke(61, 20, 247);
  //cobalt
  line(b, 0, 2/b, height);
  stroke(13, 165, 191);
  //teal
  line(c, 0, 2/c, height);
  stroke(13, 165, 191);
  //teal
  line(d, 0, 2/d, height);
  stroke(193, 31, 183);
  //fuschia
  line(e, 0, 2/e, height);
  stroke(193, 31, 183);
  //fuschia
  line(f, 0, 2/f, height);


  if (a > width) {
    a = 0;
  }
  if (b > width) {
    b = 0;
  }
  if (c > width) {
    c = 0;
  }
  if (d > width) {
    d = 0;
  }
  if (e > width) {
    e = 0;
  }
  if (f > width) {
    f = 0;
  }
}

