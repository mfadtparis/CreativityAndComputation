/* @pjs preload="oha.jpg"; */
PImage img;
int cellsize = 2;
int columns, rows;

void setup() {
  size(640, 360, P3D);
  img = loadImage("oha.jpg");
  columns = img.width / cellsize; //calcualte # of columns
  rows = img.height / cellsize; //calculate # of rows
}

void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2, 0);

  //begin loop for columns
  for ( int i = 0; i < columns; i+=2) {
    //begin loop for rows
    for ( int j = 0; j < rows; j++) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*img.width; // Pixel array location
      color c = img.pixels[loc]; // Grab color
      //Calculate a z position as a function of mouseX and pixel brightness
      //float z = ((mouseX / float(width/2)) * (mouseY / float(height))) * brightness(img.pixels[loc]) - 20.0;
      float z = millis() * (.0001) * brightness(img.pixels[loc]) - 20.0;

      //Translate to the location set fill and stroke, and draw the rect
      pushMatrix();
      translate(x-img.width/2, y-img.height/2, z);
      fill(c, 204);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, cellsize, cellsize);
      popMatrix();
    }
  }
  popMatrix();
}
