// communication with arduino tutorial from: https://learn.sparkfun.com/tutorials/connecting-arduino-to-processing/all

import processing.serial.*;

Serial myPort; // create object from serial class
String val;    // data received from the serial port
String[] headlines = {
  "You found me." ,
  "Now, I find you." ,
};
PFont f; // Global font variable
float x; // Horizontal location
int index = 0;

void setup(){
  size(400,400);
  
  // setup font and position on screen
  f = createFont("Arial", 16, true);
  x = width;
  
  // communication with arduino
  String portName = Serial.list()[4]; // change port to match
  myPort = new Serial (this, portName, 9600);
  
}


void draw (){
  background(255);
  fill(0);
  
  // display headline at x location
  textFont (f, 20);
  textAlign (LEFT);  
  
  text(headlines[index], x, 180);
  x = x - 3;
  
  float w = textWidth(headlines[index]); 
  if (x < -w) {
    x = width;
    index = (index + 1) % headlines.length; 
  }
  
  
  // communication with arduino
  if (myPort.available() > 0){
    val = myPort.readStringUntil('\n'); // read it and store it in val
  }
  
  println(val);
}
