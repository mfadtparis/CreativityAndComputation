var john;
var soundFile, reverb;
function preload() {
  soundFile = loadSound('assets/crystalglass.mp3');
}

function setup() {
  createCanvas(1024, 768);
  
  reverb = new p5.Reverb();
  
  // connect soundFile to reverb, process w/
  // 3 second reverbTime, decayRate of 2%
  reverb.process(soundFile, 3, 2);
  soundFile.play();
  loop();
  
  // specify multiple formats for different browsers
  john = createVideo(['assets/john.mov', 
                      'assets/john.webm']);
  john.loop();
  john.hide(); 
  
}


function draw() {
  clear();
  image(john,0,0); // draw the video frame to canvas
  var modFreq = map(touchY, 0, height, 700, 1);
  oscillator.freq(modFreq);
  var modAmp = map(touchX, 0, width, 0, 1);
  oscillator.amp(modAmp, 0.01); // fade time of 0.1 for smooth fading
  ellipse(touchX,touchY,20,20);
  
}

function touchMoved() {
  // do some stuff
  return false;
}