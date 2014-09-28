import gab.opencv.*;
import processing.video.*;

Movie video;
OpenCV opencv;
PImage bg;
boolean takeSnapshot = false;

int movieW = 640;
int movieH = 426;

float centerX = 0;
float centerY = 0;

float g = 150;
float h = 150;


void setup() {

  size(movieW, movieH, P2D);

  video = new Movie(this, "bright.mov");
  video.play(); 

  opencv = new OpenCV(this, movieW, movieH);
  bg = createImage(movieW, movieH, RGB);
}

void draw() {

  // copy the video image to opencv image
  opencv.loadImage(video);

  // draw opencv image
  image(opencv.getOutput(), 0, 0);

  // threshold for brightness
  opencv.threshold(73);
  //image(opencv.getOutput(), 0, 0,160,120);

  // eliminate noise
  opencv.erode();
  opencv.dilate();


  ArrayList<Contour>contours = opencv.findContours(false, true);

  // draw the first contour only which will be the largest
  if (contours.size() > 0 ) {


    // get the contour at position 0
    Contour contour = contours.get(0);

    strokeWeight(3);
    noFill();
    stroke(255, 0, 0);
    contour.draw();
    
    float angle = atan2(centerX, centerY);
    
    pushMatrix();
      translate(centerX, centerY);
      rotate(angle);
      ellipseMode(CENTER);
      ellipse(0, 0, 10, 10);
    popMatrix();
    
    // save the center point
    // reuse these variables to draw
    centerX = contour.getBoundingBox().x + contour.getBoundingBox().width*.5;
    centerY = contour.getBoundingBox().y + contour.getBoundingBox().height*.5;
    
    
      
  }



}



void movieEvent(Movie m) {
  m.read();
}

