//float x;
//float y;
//float z;

void setup(){
  size(500,500, P3D);
  background(0);
  //lights();
  
  //x = width/2;
  //y = height/2;
  //z = 0;
}

void draw(){
  //translate(x,y,z);
  //rectMode(CENTER);
  //rect(0,0,100,100);
  //z++; //rectangle moves forward as z increments
  
  if (mousePressed){
  lights();
  }
  
  pushMatrix();
  translate(130, height/2, 0);
  rotateY(1.25);
  rotateX(-0.4);
  noStroke();
  box(100);
  popMatrix();
  
  pushMatrix();
  translate(500, height*0.35, -200);
  noFill();
  stroke(255);
  sphere(280);
  popMatrix();
  
  
}
