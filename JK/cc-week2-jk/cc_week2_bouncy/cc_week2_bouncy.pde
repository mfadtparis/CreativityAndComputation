int ballX = 250;
int ballXSpeed = 5;
 
void setup() {
  size (400, 600);
}
 
void draw () {
  background(222,237,194);
  noStroke();
  fill(245,133,243);
  ellipse (ballX, mouseY, 50, 50);
 
 
  ballX = ballX + ballXSpeed; 
  
  if (ballX > width) {
    ballXSpeed = -20;
  }
   
  if(ballX<0){
    ballXSpeed = 5;
  
       
    }
  }

