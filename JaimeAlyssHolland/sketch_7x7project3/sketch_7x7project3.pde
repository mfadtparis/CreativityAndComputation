float a;  // Angle of rotation
float offset = PI/24.0; //Angle offset between boxes
int num = 12; //Number of boxes


void setup() {
  size(1000, 1000, P3D);
}

void draw() {

  lights();
  background(0, 0, 26);

  for (int i = 0; i < num; i++) {
    float gray = map(i, 0, num-1, 0, 255);
    pushMatrix();
    translate(25, 25);
    stroke(0, random(255), 0); //RGB
    fill(0);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    box(200);
    popMatrix();

    pushMatrix();
    translate(450, 450);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    stroke(0, 0, random(255));
    fill(0);
    box(200);
    popMatrix();

    pushMatrix();
    translate(875, 875);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    stroke(random(255), 0, 0);
    fill(0);
    box(200);
    popMatrix();

    pushMatrix();
    translate(875, 25);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    stroke(100, 2, 214);
    fill(0);
    box(200);
    popMatrix();

    pushMatrix();
    translate(25, 875);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    stroke(255, 235, 3);
    fill(0);
    box(200);
    popMatrix();

    pushMatrix();
    translate(450, 825);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    stroke(243, 47, 247);
    fill(0);
    box(150);
    popMatrix();

    pushMatrix();
    translate(450, 25);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    stroke(3, 244, 255);
    fill(0);
    box(150);
    popMatrix();

    pushMatrix();
    translate(850, 450);
    rotateY(a + offset*i);
    rotateX(a/2 + offset*i);
    stroke(255, 129, 3);
    fill(0);
    box(150);
    popMatrix();

    pushMatrix();
    translate(25, 450);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    stroke(190, 111, 240);
    fill(0);
    box(150);
    popMatrix();

    pushMatrix();
    translate(650, 250);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    stroke(255, 0, 111);
    fill(0);
    box(125);
    popMatrix();

    pushMatrix();
    translate(250, 650);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    stroke(255, 255, 255);
    fill(0);
    box(125);
    popMatrix();

    pushMatrix();
    translate(250, 250);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    stroke(255, 196, 0);
    fill(0);
    box(125);
    popMatrix();

    pushMatrix();
    translate(650, 650);
    rotateY(a/2 + offset*i);
    rotateX(a + offset*i);
    stroke(0, 255, 159);
    fill(0);
    box(125);
    popMatrix();
  }

  a += 0.01;
  line(50, 50, random(100), random(100) );
}

