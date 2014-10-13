float x = 0;
float y = 0;
float endX = x + 1;
float endY = y +1;

void setup() {
  size (700, 700);
  background(0);
  stroke(255);
}

void draw() {

  endX = endX + 10;
  endY = endY + 10;
  for (int x = 0; x < width; x = x + 500) {
    for (int y = 0; y < height; y = y + 500) {
      line (width/2, height/2, x, y);
      line (width/2, height/2, x, endY);
      line (width/2, height/2, endX, y);
      line (width/2, height/2, endX, height);
      line (width/2, height/2, width, endY);
    }
  }
}

