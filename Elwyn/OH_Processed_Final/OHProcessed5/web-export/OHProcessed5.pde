PImage oh;

void setup() {
  size(800, 600);
  oh = loadImage("oh5.jpg");
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
      float d = dist(mouseX, mouseY, x, y);
      float newY = map(mouseY,0,height,0,255);
      float newX = map(mouseX,0,height,0,255);
      pixels[loc] = color(g+newX, r+newY, b*2+newY);


//map mouseX and mouseY to (0,255

      //float d = dist(width/2,height/2,x,y);

      // float factor = map(d,0,250,0,0);

      //pixels[loc] = color(g+d,r+d,b*2+d );


      //pixels[loc] = color(r+d, g+d,b+d);
      //pixels[loc] = color(r*factor, g*factor, b*factor);
    }
  }
  updatePixels();
}


