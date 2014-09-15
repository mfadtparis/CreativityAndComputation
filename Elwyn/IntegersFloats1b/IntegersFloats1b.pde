/**
 * Integers Floats. 
 * 
 * Integers and floats are two different kinds of numerical data. 
 * An integer (more commonly called an int) is a number without 
 * a decimal point. A float is a floating-point number, which means 
 * it is a number that has a decimal place. Floats are used when
 * more precision is needed. 
 */
 
int a = 0;      // Create a variable "a" of the datatype "int"
float b = 0.0;  // Create a variable "b" of the datatype "float"
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
  //(50, 0, 50); blackish
  //(250, 250, 100); yellow
  //(185, 250, 200); mint
  
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
  
  line(a, 0, 2/a, height);
  stroke(61, 20, 247);
  //cobalt
  line(b, 0, 2/b, height);
  stroke(61, 20, 247);
  //cobalt
  line(c, 0, 2/c, height);
  stroke(13, 165, 191);
  //teal
  line(d, 0, 2/d, height);
  stroke(13, 165, 191);
  //teal
  line(e, 0, 2/e, height);
  stroke(193, 31, 183);
  //fuschia
  line(f, 0, 2/f, height);
    stroke(193, 31, 183);
  //fuschia
  
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

