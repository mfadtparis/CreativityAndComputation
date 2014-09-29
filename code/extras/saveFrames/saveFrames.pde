void setup(){
  size(300,200);
}

void draw(){
  
  // draw something
  background(254,54,209);
  ellipse( width*noise(millis()*.001),height*noise(millis()*.003),30,30);

  // save every 4 frames (stop after 30 saved)
  if( frameCount % 4 == 0 && frameCount <= 120){
    saveFrame("frame-###.png");
  }
}

