void setup() {
  size(500, 500);
  background(000000);
  smooth();
  noStroke();
}

void draw()
 { if (frameCount % 10 == 0) 
    fill(frameCount * 3 % 255, frameCount * 5 % 255,
      frameCount * 7 % 255);
    pushMatrix();
    translate(100, 100);
    rotate(radians(frameCount * 2  % 360));
    triangle(30, 75, 0, 20, 66, 75);
    popMatrix();

  if (frameCount % 10 == 0) 
    fill(frameCount * 3 % 255, frameCount * 5 % 255,
      frameCount * 7 % 255);}
      pushMatrix();
  fill(255, 0, 0); // red square
  rotate(radians(30));
  translate(70, 70);
  scale(2.0);
  rect(50, 50, 20, 20);
  popMatrix();
  }

