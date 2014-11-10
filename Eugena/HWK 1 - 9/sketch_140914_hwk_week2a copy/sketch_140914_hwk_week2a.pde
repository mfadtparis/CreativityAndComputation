int armAngle = 0;
int angleChange = 5;
final int ANGLE_LIMIT = 135;

void setup ()
{
  size (200, 200);
  background (255);
  smooth ();
  frameRate(30);
}

void draw ()
{
  background(255);
  pushMatrix();
  translate(50,50);
  drawRobot();
  armAngle += angleChange;
  
  if (armAngle > ANGLE_LIMIT || armAngle < 0)
  {
    angleChange = -angleChange;
    armAngle += angleChange;
  }
  popMatrix();
}


void drawRobot ()
{
  noStroke ();
  fill (#90175A);
  rect (20, 0, 38, 30); // head
  rect (14, 32, 50, 50); // body
  
  drawLeftArm();
  drawRightArm ();
  //rect (0, 32, 12, 37); // left arm
  //rect (66, 32, 12, 37); // right arm
  
  rect (22, 84, 16, 50); // left leg
  rect (40, 84, 16, 50); // right leg
  
  fill (255);
  ellipse (40, 5, 5, 5); // left eye
  ellipse (50, 5, 5, 5); // right eye
  
}

void drawLeftArm()
{
  pushMatrix();
  translate(12, 32);
  rotate(radians(armAngle));
  rect (-12, 0, 12, 37);
  popMatrix();
}

void drawRightArm()
{
  pushMatrix();
  translate(66,32);
  rotate(radians(-armAngle));
  rect(0, 0, 12, 37);
  popMatrix();
}
