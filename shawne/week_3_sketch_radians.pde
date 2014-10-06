float r = 100; 
float theta = 0;

void setup() { 
  size (400, 400);
  background (88, 17, 245);
  smooth(10);
}

void draw() { 
 
  float x = r * cos(theta); 
  float y = r * sin(theta); 
  
 noStroke(); 

 fill(255);
 ellipse(x+width/2, y+height/3, 16,16);
 
 theta += 0.009; 
 
  noStroke(); 
 fill(255);
 ellipse(x+width/8, y+height/3, 16,16);
 
  noStroke(); 
 fill(0);
 ellipse(x+width/3, y+height/3, 16,16);
 
}
