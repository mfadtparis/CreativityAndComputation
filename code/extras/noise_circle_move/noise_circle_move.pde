// create two noise counters that have random starting values
float noiseCounterA = random(100);
float noiseCounterB = random(100);

// create the x positions
float x = 0;

void setup() {
  size(500, 500, OPENGL);
  smooth();
  background(255);
  
  // start at screen center
  x = width/2;
  
  
}

void draw() {

  stroke(0, 10);
  noFill();
  
  // calculate y position using noise
  float yOffset = 400 * noise(noiseCounterA);
  
  // draw applying noise to both y and size
  ellipse(x, yOffset, yOffset*.25, yOffset*.25);
  
  // move x with noise
  x += 4 * noise(noiseCounterB) -1;

  // increment noise counters
  noiseCounterA += .005f;
  noiseCounterB += .01f;

  // reset when offscreen
  if (x<0 || x > width){ 
    x = random(width);
  }
  
}


void keyPressed() {
  if( key == 'r'){ 
    background(255);
  }
  
}

