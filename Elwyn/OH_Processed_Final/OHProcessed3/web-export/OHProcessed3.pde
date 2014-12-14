PImage oh;

void setup() {
  size(648,432);
  oh = loadImage("oh3.jpg");
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
     if (mouseX > y) {
     pixels[loc] = color(g,r/2,b*2);
   } else {
     pixels [loc] = color(b+mouseX,g/2, r +mouseY);
   } 
 }
 updatePixels();
}
}

