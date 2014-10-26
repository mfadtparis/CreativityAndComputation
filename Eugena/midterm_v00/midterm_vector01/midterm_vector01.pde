// learning vector with processing example

float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;

void setup() {
  size(500,500);
  smooth();
  background(255);
}

void draw() {
  noStroke();
  fill(#0CC438);
  
  
  // Add the current speed to the location.
  x = x + xspeed;
  y = y + yspeed;

  // Check for bouncing
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  // Display at x,y location
  noStroke();
  fill(#0CC438);
  ellipse(x,y,16,16);
}
