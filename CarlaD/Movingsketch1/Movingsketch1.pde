


// used to create font
PFont myFont;

void setup() {
  size(400, 200);
  background(0);
  smooth();
  noStroke();
  // generate processing font from system font
  myFont = createFont("verdana", 12);
  textFont(myFont);
}

void draw(){
  if (frameCount % 3 == 0) {
    fill(frameCount * 3 % 255, frameCount * 5 % 255,
      frameCount * 20 % 255);
    pushMatrix();
    translate(80, 80);
    rotate(radians(frameCount * 4  % 360));
    ellipse(0, 0, 100, 10);
    popMatrix();
    
  if (frameCount % 10 == 0) {
    fill(frameCount * 3 % 255, frameCount * 5 % 255,
      frameCount * 125 % 255);
    pushMatrix();
    translate(200, 140);
    rotate(radians(frameCount * 4  % 360));
    rect(0, 0, 20, 5);
    popMatrix();
    }
   
     if (frameCount % 1 == 0) {
    fill(frameCount * 3 % 255, frameCount * 5 % 255,
      frameCount * 20 % 255);
    pushMatrix();
    translate(320, 80);
    rotate(radians(frameCount * 4  % 360));
    ellipse(0, 0, 100, 10);
    popMatrix();
    }
  }
  
  
  

  // output some calculations
  text("IT IS OKAY FOR ME TO HAVE EVERYTHING I WANT", 50, 185);
 
}
