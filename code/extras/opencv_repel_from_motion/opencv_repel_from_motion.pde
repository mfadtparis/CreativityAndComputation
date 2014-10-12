import processing.video.*;
import gab.opencv.*;

Capture video;
OpenCV opencv;

int imageW = 640;
int imageH = 480;

ArrayList<Bubble> bubbles;

void setup(){
  size(imageW, imageH, P2D);
  video = new Capture(this, width, height);
  video.start(); 
  opencv = new OpenCV(this, imageW, imageH);

 // starts motion background detection
 opencv.startBackgroundSubtraction(5, 3, 0.5);
 
 bubbles = new ArrayList();
 for( int i = 0; i < 50; i++){
   bubbles.add(new Bubble() );
 }
}

void draw(){
  
  background(0);
  // get live video
  if (video.available()) { 
    video.read();
  }

  // copy video to opencv 
  opencv.loadImage(video);
  
  // update tracking
  opencv.updateBackground();
  
  // clean up results
  opencv.erode();
  opencv.dilate();
  
  // draw the contours
  for (Contour contour : opencv.findContours(false,true)) {
    contour.draw();
    for (Bubble bubble : bubbles) {
      //bubble.draw();
      float centerX = contour.getBoundingBox().x+(.5*contour.getBoundingBox().width);
      float centerY = contour.getBoundingBox().y+(.5*contour.getBoundingBox().height);
      float d = dist(bubble.x,bubble.y,centerX,centerY);
      if( d < 100 ){
        //apply force away
        bubble.repelFrom(centerX,centerY,d);
      }
    }
  }
  
  // make bubbles move away
  for (Bubble bubble : bubbles) {
    bubble.update();
    bubble.draw();
  }
}



class Bubble{
  
  float x,y;
  float originX, originY;
  float velX,velY;
  float radius;
  float damp;
  
  Bubble(){
    x = random(width);
    y = random(height);
    originX = x;
    originY = y;
    velX = 0;
    velY = 0;
    radius = 20;
    damp = .25;
  }
  
  
  void draw(){
    ellipse(x,y,radius*2,radius*2);
  }
 
 void update(){
   x += velX;
   y += velY;
   velX -= damp*velX;
   velY -= damp*velY;
   
   // attract to their intitial position
   velX += .01 * (originX-x);
   velY += .01 * (originY-y);
 }
 
 
 void repelFrom(float cx, float cy, float d){
   velX -= .1 * (cx-x);
   velY -= .1 * (cy-y);
 }
 
 
}

