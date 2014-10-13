float x = 0;
float y = 0;
float endX = 0;
float endY = 0;


void setup() {
  size (700, 700);
  background(0);
}

void draw() {
endX = endX + 2;
endY = endY + 2;
stroke (random(255));
  for (int x = 0; x < endX; x = x + 30)
    for (int y = 0; y < endY; y = y + 30) {
      line (width/2, height/2, x, y);
      line (width/2, height/2, width, height);
      line (width/2, height/2, width, endY);
      line (width/2, height/2, endX, height);
    }
}

