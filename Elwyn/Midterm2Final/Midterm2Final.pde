int vW = 0;
int vH = 0;
float endX;
float endY;


void setup() {
  size (800, 800);
  background(0);
  frameRate (20);
  vW = width;
  vH = height;
}

void draw() {
  stroke (random(200, 255));
  strokeWeight (random(.001, 1));
  for (int x = 0; x < width; x = x + 500) {
    for (int y = 0; y < height; y = y + 500) {
      line (width/2, height/2, x, y);
      line (width/2, height/2, x, endY);
      line (width/2, height/2, endX, y);
      line (width/2, height/2, endX, height);
      line (width/2, height/2, width, endY);
    }
  }
  endX = endX + 10;
  endY = endY + 10;
}

void keyPressed() {

  for (int x = 0; x < vW; x = x + 10) {
    for (int y = 0; y < vH; y = y + 10) {
      stroke (random (100, 200));
      strokeWeight (random(.01, 1));
      line (vW/2, vH/2, x, y);
    }
  }
}

void mousePressed () {
  background (0);
  endX = endX;
  endY = endY;
  stroke (random(100, 255));
  strokeWeight(random(.1, 1));
  for (int x = 0; x < width; x = x + 15) {
    for (int y = 0; y < height; y = y + 15) {
      line (width/2, height/2, x, y);
    }
  }
}

