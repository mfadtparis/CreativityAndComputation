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

  //threshold for brightness
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
stroke(50,150,150);
strokeWeight(random(.1,5));

line(centerX, centerY, 0, 0);
line(centerX, centerY, 0, height);
line(centerX, centerY, width, 0);
line(centerX, centerY, width, height);
line(centerX, centerY, width/2, height);
line(centerX, centerY, width, height/2);
line(centerX, centerY, width/2, 0);
line(centerX, centerY, 0, height/2);
}



void movieEvent(Movie m) {
  m.read();
}
