import processing.video.*;

import gab.opencv.*;
import java.awt.Rectangle;

import org.firmata.*;
import cc.arduino.*;

OpenCV opencv;
Rectangle[] faces;

// add camera object
Capture cam;

// setup for String of headlines
String[] headlines = {
  "you found me.",
  "now, i find you.", 
};

PFont f; // Global font variable
float x; // Horizontal location
int index = 0;


void setup(){
  // set up headlines
  f = createFont( "Arial" , 80, true);
  // initialize headline offscreen
  x = width;
  
  
  // set up camera
  cam = new Capture(this, 640, 480);
  cam.start();
  
  opencv = new OpenCV(this, 640, 480);
  size(opencv.width, opencv.height);
  
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
}




void draw(){
  // load camera image
  if (cam.available()){
      cam.read();
  }
  
  opencv.loadImage(cam);
  opencv.flip(1);
  
  faces = opencv.detect();
  
  pushMatrix();
    scale(-1, 1);
    image(cam, -cam.width, 0);
  popMatrix();
  
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  
  //for (int i = 0; i < faces.length; i++){
   //rect (faces[i].x, faces [i].y, faces[i].width, faces[i].height);
    
    
    //setup for text
    fill(255);
    textFont(f, 80);
    textAlign (LEFT);
  
    text(headlines[index],x,180); 
  
    // Decrement x
    x = x - 3;
  
    // If x is less than the negative width, then it is off the screen
    // textWidth() is used to calculate the width of the current String.
    float w = textWidth(headlines[index]); 
    if (x < -w) {
      x = width;
    // index is incremented when the current String has left the screen in order to display a new String.
    index = (index + 1) % headlines.length; 
  }
  }

