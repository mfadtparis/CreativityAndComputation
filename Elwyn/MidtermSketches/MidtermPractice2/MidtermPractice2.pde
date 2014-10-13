float x = 0;
float y = 0;
float endX = x;
float endY = y;

void setup() {
  size (700, 700);
  background(0);
}

void draw() {
  endX = endX +100;
  endY = endY +100;
  stroke (random(255));
  for (int x = 0; x < width; x = x + 15) {
    for (int y = 0; y < height; y = y + 15) {
      line (width/2, height/2, x, y);
    }
  }
}

