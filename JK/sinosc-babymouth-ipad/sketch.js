var bg;

function setup() {
  createCanvas(1024, 768);
  bg = loadImage("assets/missyoutest.jpg");

  
  oscillator = new p5.SinOsc(440);
  oscillator.start();

}

function draw() {
  background(bg);
  var modFreq = map(touchY, 0, height, 700, 1);
  oscillator.freq(modFreq);

  var modAmp = map(touchX, 0, width, 0, 1);
  oscillator.amp(modAmp, 0.01); // fade time of 0.1 for smooth fading
 
  noStroke();
  ellipse(touchX,touchY,20,20);
 
}


function touchMoved() {
  // do some stuff
  return false;
}