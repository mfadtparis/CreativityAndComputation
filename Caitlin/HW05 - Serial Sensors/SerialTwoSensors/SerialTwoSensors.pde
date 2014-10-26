// http://cmuems.com/2012/c/arduino-processing/

import processing.serial.*;
 
int sensor0 = 0;
int sensor1 = 0;
 
Serial myPort;

float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;
 
void setup() {
  size(400, 300);
 
  // List all the available serial ports
  println(Serial.list());
  // I know that the first port in the serial list on my mac
  // is always my  Arduino, so I open Serial.list()[0].
  // Open whatever port is the one you're using.
  myPort = new Serial(this, Serial.list()[5], 9600);
  // don't generate a serialEvent() unless you get a newline character:
  myPort.bufferUntil('\n');
}
 
void draw() {
  
//  float radiusA = map(sensor0,0,1023,10,200);
//  float radiusB = map(sensor1,0,1023,10,200);
//
//  ellipse(100,height/2,radiusA,radiusA);
//  ellipse(300,height/2,radiusB,radiusB);
  
  float alpha = map(sensor0,0,1023,25,190);
  noStroke();
  fill(255,alpha);
  rect(0,0,width,height);
  
  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  // Check for bouncing
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  // Display at x,y location
  stroke(0);
  fill(175);
  float rad = map(sensor1,0,1023,2,100);
  ellipse(x,y,rad,rad);
}
 
void serialEvent(Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');
 
  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // split the string on the commas and convert the
    // resulting substrings into an integer array:
    int[] sensors = int(split(inString, ","));
    // if the array has at least two elements, you know
    // you got the whole thing.  Put the numbers in the
    // sensor variables:
    if (sensors.length >=2) {
      sensor0 = sensors[0];
      sensor1 = sensors[1];
    }
  }
}
