class Agent{
  
  float noiseX, noiseY;  // to update noise
  float x, y;    // position
  
  Agent(){
    noiseX = random(-100,width+100);
    noiseY = random(-100,height+100);

  }
  
  void update(){
    x = noise(noiseX)*width;
    y = noise(noiseY)*height;
    noiseX +=.003;
    noiseY +=.003;
  }
  
  void display(){
    noStroke();
    ellipse(x,y,20,20);
  }
  
  void drawLines(float myDist, float tx, float ty){
      float alpha = map(myDist,0,MAX_DIST,0,255);
      stroke(0,255-alpha);
      line(x,y,tx,ty);
  }
  
 
}


