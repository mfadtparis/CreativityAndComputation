PImage oh;

void setup() {
  size(400,267);
  oh = loadImage("oh1.jpg");
}

void draw() {
 //image(oh,0,0);
 loadPixels();
 oh.loadPixels();
 for (int x=0; x < width; x++) {
   for (int y=0; y < height; y++) {
     int loc = x+y*width;
     float d=dist(mouseX, mouseY, x, y);

     float b = brightness(oh.pixels[loc]);
     if (b > 100) {
     pixels[loc] = color(100+mouseX, 70+mouseX, 90+mouseX);
     } else {
       pixels[loc] = color(0 + mouseY);
     }
     
     // float r = red(oh.pixels[loc]);
     // float g = green(oh.pixels[loc]);
     // float b = blue(oh.pixels[loc]);
     //float d = dist(width/2,height/2,x,y);
     // float factor = map(d,0,200,0,2);
     //pixels[loc] = color(r+d, g+d,b+d);
     //pixels[loc] = color(r+mouseX, g+mouseX, b+mouseX);
     //pixels[loc] = color(r*factor, g*factor, b*factor);
   }
 }
 updatePixels();
}

