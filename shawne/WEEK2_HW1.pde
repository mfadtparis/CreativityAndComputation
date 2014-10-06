/**
 * Setup and Draw. 
 * 
 * The code inside the draw() function runs continuously
 * from top to bottom until the program is stopped.  
 */

float y = 100;

void setup() {
  size(940, 560);  
  stroke(172,222,247);    
  frameRate(1500);
}
void draw() { 
  background(0);  
  y = y - 1; 
  if (y < 0) { 
    y = height; 
  } 
line(0, y, width, y);  
line(0, y, width, y+183);  
line(0+80, y, width, y+56);  
rect(0+80, y, width, y+96);  
} 

