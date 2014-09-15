int armAngle = 0;
int angleChange = 5;
final int ANGLE_LIMIT = 250;

// used to create font
PFont myFont;


void setup()
{
  size(350, 350);
  smooth();
  frameRate(300);
   // generate processing font from system font
  myFont = createFont("Braggadocio", 9);
  textFont(myFont);
  
}


void draw()
{
  background(0);
  pushMatrix();
  translate(150, 150); // place robot so arms are always on screen
  drawRobot();
  armAngle += angleChange;
  
  // if the arm has moved past its limit,
  // reverse direction and set within limits.
  if (armAngle > ANGLE_LIMIT || armAngle < 0)
  {
    angleChange = -angleChange;
    armAngle += angleChange;
  }
  popMatrix();
   // output some calculations
  text("THE SPACE BETWEEN NEVER AND AGAIN", 50, 185);
}


void drawRobot()
{
  noStroke();
  fill(#FF4B75);
  
  drawLeftArm();
  drawRightArm();
  
  
}


void drawLeftArm()
{
  pushMatrix();
  translate(20, 20);
  rotate(radians(armAngle));
  ellipse(100, 1, 20, 50);
  popMatrix();
}


void drawRightArm()
{
  pushMatrix();
  translate(20, 20);
  rotate(radians(-armAngle));
  fill(192);
  ellipse(100, 1, 20, 50);
  popMatrix();
}
