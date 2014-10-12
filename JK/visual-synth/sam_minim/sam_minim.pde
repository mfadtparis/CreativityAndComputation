import processing.video.*;
Movie myMovie;

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
AudioOutput out;
Oscil       wave;

int num = 40;
float mx[] = new float[num];
float my[] = new float[num];
 
void setup (){
  size(500,660,P2D);
  myMovie = new Movie(this, "sam.mov");
  myMovie.loop();
  
  minim = new Minim(this);  
  out = minim.getLineOut();  
  wave = new Oscil( 440, 0.5f, Waves.SINE );  
  wave.patch( out );
  
  fill(250, 215, 242); 
  smooth();
  noStroke();
}

void movieEvent(Movie myovie) {
  myMovie.read();
}

void mouseMoved(){
  
  float amp = map( mouseY, 0, height, 1, 0 );
  wave.setAmplitude( amp );
  
  float freq = map( mouseX, 0, width, 110, 880 );
  wave.setFrequency( freq );
}

void draw() {  
  background(255);
  image(myMovie, -350, 0);
  tint(mouseX,mouseY,255);
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
    ellipse(mx[index], my[index], i, i);
  }
  }
