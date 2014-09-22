void setup() {
  size(600, 600);
  background(255);
  smooth();
  noStroke();
}

void draw() {
  if (frameCount % 10 == 0) {
    fill(frameCount * 3 % 255, frameCount * 5 % 255, 
    frameCount * 7 % 255);
    pushMatrix();
    translate(300, 300);
    for (int i = 0; i < 360; i +=30) {
      rotate(radians(frameCount * 2 % 360));
      rect(0, 0, 80, 20);
    }
    popMatrix();
  }
}

