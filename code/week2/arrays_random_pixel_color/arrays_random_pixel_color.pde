// Creativity and Computation
// Week 2 Pixels
// Modify screen's pixels to change values to random

void setup(){
  size(200,200);  
}

void draw(){
  loadPixels();
  for( int i = 0; i < width*height; i++){
    
    color c = color(random(255),random(255), random(255));
    pixels[i] = c;
    
  }
  updatePixels();
}
