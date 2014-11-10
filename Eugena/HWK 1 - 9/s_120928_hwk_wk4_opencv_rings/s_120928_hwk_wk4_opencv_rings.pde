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
  // I'm trying to have a ring of circles orbit around the light.
  // I'm a little confused about why there are two additional center
  // circles and one in the orbit ring that is wiggling around.
  
  
  
  // draw the first contour only which will be the largest
  if (contours.size() > 0 ) {


    // get the contour at position 0
    Contour contour = contours.get(0);

    strokeWeight(3);
    noFill();
    stroke(255, 0, 0);
    contour.draw();
    
    for (int i = 0; i < 360; i+=10){
    float angle = atan2(centerX, centerY);
    float angletwo = 0;
    float f = radians(i);
    float g = 100*cos(f);
    float h = 100*sin(f);
    
    angletwo+=10;
     
    pushMatrix();
      translate(centerX, centerY);
      rotate(angle);
      ellipseMode(CENTER);
      ellipse(0, 0, 10, 10);
      
      rotate(radians(angletwo));
      ellipse(g, h, 10, 10);
    popMatrix();
    
    // save the center point
    // reuse these variables to draw
    centerX = contour.getBoundingBox().x + contour.getBoundingBox().width*.5;
    centerY = contour.getBoundingBox().y + contour.getBoundingBox().height*.5;
    
    }
      
  }



}



void movieEvent(Movie m) {
  m.read();
}

