import processing.opengl.*;

float inc = 0.0; 

void setup() 
{
  noStroke();

  size(800, 800, OPENGL); // OPEN GL ALLOWS US TO PLAY WITH 3D THINGS
}

void draw() 
{
  background(40);
  lights();
  inc +=0.1; //TO BE INCREMENTING 
  
  pushMatrix();
  translate(width/2 - 170, height/2); //TO BE IN THE MIDDLE
  //rotateX(mouseX*0.01);
  rotateY(mouseY*0.1);
  //rotateZ(inc);
  fill(200);
  box(100, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2 +110); //TO BE IN THE MIDDLE
  rotateX(mouseX*0.1);
  rotateY(mouseY*0.1);
  //rotateZ(inc);
  fill(200);
  box(100, 100, 100);
  popMatrix();
  
  
  pushMatrix();
  translate(width/2, height/2); //TO BE IN THE MIDDLE
 rotateX(inc);
  rotateY(inc);
  //  rotateZ(inc);
  fill(#F53987);
  box(100, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2 +170, height/2); //TO BE IN THE MIDDLE
  //rotateX(inc);
  rotateY(mouseY*0.1);
  //  rotateZ(inc);
  fill(200);
  box(100, 100, 100);
  popMatrix();
  
 pushMatrix();
 translate(mouseX,mouseY); //TO BE IN THE MIDDLE
 rotateX(mouseX*0.01);
 rotateY(mouseY*0.01);
 //rotateZ(inc);
 fill(255);
 box(50, 50, 50);
 popMatrix();
 
  pushMatrix();
 translate(mouseX+50,mouseY+50); //TO BE IN THE MIDDLE
 rotateX(mouseX*0.01);
 rotateY(mouseY*0.01);
 //rotateZ(inc);
 fill(255);
 box(50, 50, 50);
 popMatrix();
 
  pushMatrix();
 translate(mouseX+100,mouseY+100); //TO BE IN THE MIDDLE
 rotateX(mouseX*0.01);
 rotateY(mouseY*0.01);
 //rotateZ(inc);
 fill(255);
 box(50, 50, 50);
 popMatrix();
  
  pushMatrix();
  translate(width/2 - 170, height/2 - 110); //TO BE IN THE MIDDLE
  //rotateX(inc);
  rotateY(inc);
  //rotateZ(inc);
  fill(#4D5681);
  box(100, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2 - 170, height/2 + 110); //TO BE IN THE MIDDLE
  //rotateX(inc);
  rotateY(inc);
  //rotateZ(inc);
  fill(#4D5681);
  box(100, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2 - 110); //TO BE IN THE MIDDLE
  //rotateX(inc);
  rotateY(inc);
  //  rotateZ(inc);
  fill(#FACCBB);
  box(100, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2 +170, height/2 - 110); //TO BE IN THE MIDDLE
  //rotateX(inc);
  rotateY(inc);
  //  rotateZ(inc);
  fill(#60DBE8);
  box(100, 100, 100);
  popMatrix();
  
  pushMatrix();
  translate(width/2 +170, height/2 + 110); //TO BE IN THE MIDDLE
  //rotateX(inc);
  rotateY(inc);
  //  rotateZ(inc);
  fill(#60DBE8);
  box(100, 100, 100);
  popMatrix();
} //<>//
