// Creativity and Computation
// Week 2 Functions
// Check if mouse is over a circle

int aX = 0;
int aY = 200;
int aSize = 100;


int bX = 200;
int bY = 0;
int bSize = 30;

void setup() {
  size(500, 500);
}

void draw() {

  background(200);
  
  // check if mouse is over circle and change color accordingly
  if ( isMouseInCircle(aX, aY, aSize)) {
    fill(255);
  } else {
    fill(0);
  }

  ellipse(aX, aY, aSize, aSize);

  // check if mouse is over samller circle and change color accordingly
  if ( isMouseInCircle(bX, bY, bSize)) {
    fill(255, 0, 0);
  } else {
    fill(255);
  }
  
  ellipse(bX, bY, bSize, bSize);

  aX++;
  bY++;

  if (aX > width+aSize/2) {
    aX = -(aSize/2);
  }

  if ( bY > height+bSize/2) {
    bY = -(bSize/2);
  }
}



boolean isMouseInCircle(int x, int y, int diameter) {

  float distance = dist(x, y, mouseX, mouseY);
  float radius = diameter / 2.0;
  if ( distance < radius) {
    return true;
  } else {
    return false;
  }
}
