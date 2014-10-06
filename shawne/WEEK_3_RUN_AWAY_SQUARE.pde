float x = 150;
float y = 150;

void setup () {
  size (300, 300); }
  
void draw (){
  background (255); 
  
  //calc angle to mouse 
 
  float angle = atan2(mouseY - y, mouseX - x);
  rectMode(CENTER); 
  pushMatrix();
    translate(x, y);
    rotate(angle);
    rect(0,0,30,30);
    
    popMatrix();
    
    x += .1 * (mouseX - y); 
    y += .1 * (mouseY - y);
    
}


// float angle = atan2(targY-y, targX-x) 
