/**
 * Integers Floats. 
 * 
 * Integers and floats are two different kinds of numerical data. 
 * An integer (more commonly called an int) is a number without 
 * a decimal point. A float is a floating-point number, which means 
 * it is a number that has a decimal place. Floats are used when
 * more precision is needed. 
 */
 
float a = 0.0;      // Create a variable "a" of the datatype "int"
int b = 0;  // Create a variable "b" of the datatype "float"
float c = 0.0;
int d = 0;
float e = 0.0;

void setup() {
  size(640, 360);
  stroke(255);
  frameRate(20);
}

void draw() {
  background(250, 250, 100);
  
  a = a + 1.5;
  //blue
  b = b + 2;
  //purple
  c = c + 2.5;
  //red
  d = d + 3;
  //orange
  e = e + 3.5;
  //yellow
  
  line(a, height/2.5, a, height);
    stroke(165, 93, 214);
  line(b, height/3, b, height);
    stroke(153, 51, 0);
  line(c, height/4, c, height);
    stroke(204, 102, 0);
  line(d, height/5, d, height);
    stroke(204, 153, 0);
  line(e, height/6, e, height);
    stroke(73, 117, 201);

    
  
  ellipse(a, height/2.5, 30, 30);
    fill(165, 93, 214);
    stroke(165, 93, 214);
  ellipse(b, height/3, 30, 30);
    fill(153, 51, 0);
    stroke(153, 51, 0);
    
  ellipse(c, height/4, 30, 30);
    fill(204, 102, 0);
    stroke(204, 102, 0);
  ellipse(d, height/5, 30, 30);
    fill(204, 153, 0);
    stroke(204, 153, 0);
  ellipse(e, height/6, 30, 30);
    fill(73, 117, 201);
    stroke(73, 117, 201);

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
}

