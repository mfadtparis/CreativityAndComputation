PImage oh;

void setup() {
  size(800,510);
  oh = loadImage("oh4.jpg");
}

void draw() {
 //image(oh,0,0);
 loadPixels();
 oh.loadPixels();
 for (int x=0; x < width; x++) {
   for (int y=0; y < height; y++) {
     int loc = x+y*width;
     float r = red(oh.pixels[loc]);
     float g = green(oh.pixels[loc]);
     float b = blue(oh.pixels[loc]);
     
     pixels[loc] = color(g+mouseX,r+mouseY,b*2);
   }
 }
 updatePixels();
}

