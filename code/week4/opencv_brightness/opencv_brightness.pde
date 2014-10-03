import gab.opencv.*;
import processing.video.*;

Movie video;
OpenCV opencv;
PImage bg;
boolean takeSnapshot = false;

//resolution of video file
int movieW = 640;
int movieH = 426;

//variables to sav center of bounding box
float centerX = 0;
float centerY = 0;

void setup() {

  size(movieW, movieH, P2D);
// initialize video
  video = new Movie(this, "bright.mov");
  video.play(); 

//init open cv object
  opencv = new OpenCV(this, movieW, movieH);
  bg = createImage(movieW, movieH, RGB);
}

void draw() {

  // copy the video image to opencv image
  opencv.loadImage(video);

  // draw opencv image
  image(opencv.getOutput(), 0, 0);

  // threshold for beightness
  opencv.threshold(73);
  //image(opencv.getOutput(), 0, 0,160,120);

  // eliminate noise
  opencv.erode();
  opencv.dilate();

// contours
  ArrayList<Contour>contours = opencv.findContours(false, true);

  // draw the first contour only which will be the largest
  if (contours.size() > 0 ) {


    // get the contour at position 0
    Contour contour = contours.get(0);

    strokeWeight(3);
    noFill();
    stroke(255, 0, 0);
    contour.draw();
    
    // save the center point
    // reuse these variables to draw
    centerX = contour.getBoundingBox().x + contour.getBoundingBox().width*.5;
    centerY = contour.getBoundingBox().y + contour.getBoundingBox().height*.5;
      
  }



}



void movieEvent(Movie m) {
  m.read();
}

