// Creativity and Computation
// Week 2 Functions
// Draw shapes with a function

void setup(){
  size(500,500);  
}

void draw(){
  background(#D8F5FF);
  drawFlower(200,200);
  drawFlower(40,40);
  drawFlower(300,300);
  drawFlower(400,150);

}

void drawFlower(int xPos, int yPos){

  for( int i = 0; i < 360; i+=20){
    
    float x = xPos + 100 * cos(radians(i));
    float y = yPos + 100 * sin(radians(i));
    stroke(0);
    line(x,y,xPos,yPos);
    noStroke();
    fill(222,20,219);
    ellipse(x,y,30,30);

  }
    
}
