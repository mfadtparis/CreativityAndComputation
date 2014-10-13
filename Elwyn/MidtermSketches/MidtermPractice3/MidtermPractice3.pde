

void setup() {
  size (700, 700);
  background(0);
}

void draw() {

  for (int x = 0; x < width; x = x + 20) {
    for (int y = 0; y < height; y = y + 20) {
      stroke (random(255));
      line (width/2, height/2, x, y);
    }
  }
}

