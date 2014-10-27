import processing.serial.*;
import processing.video.*;

Capture cam;

Serial myPort;

int count = 0;
int temp = 0;

int sensor0 = 0;
int sensor1 = 0;
 
 //vars for pixelate
float pixelscale;
float alpha0;

//vars for zoom and blur
float rand;
float size;

//vars for fade
float alpha;
float alpha2;

void setup() {
  size(640, 480);
 
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[5], 9600);
  myPort.bufferUntil('\n');
  
 String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
 
 count = temp % 3;
  
  switch(count){
    case 0:
      pixelate();
      break;
    case 1:
      zoomblur();
      break;
    case 2:
      fade();
      break;
  }
  
  println(count);
  }
     

void keyPressed(){
 temp ++;
 
}
  


 
  
void serialEvent(Serial myPort) {
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');
 
  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    // split the string on the commas and convert the
    // resulting substrings into an integer array:
    int[] sensors = int(split(inString, ","));
    // if the array has at least two elements, you know
    // you got the whole thing.  Put the numbers in the
    // sensor variables:
    if (sensors.length >=2) {
      sensor0 = sensors[0];
      sensor1 = sensors[1];
    }
  }
}

void pixelate(){
  pixelscale = map(sensor1,0,1023,0,50);
alpha0 = map(sensor0,0,1023,0,255);

image(cam, 0, 0, width, height);
loadPixels();
for (int i = 0; i<width; i+=pixelscale){
  for(int j = 0; j < height; j += pixelscale){
    color c = pixels[(i+j*width)];
    stroke(0,alpha0);
    fill(c);
    rect(i,j,pixelscale,pixelscale);
  }
}
}

void zoomblur(){
  float zoom = map(sensor1,0,1023,0,10*width);
  imageMode(CENTER);
  image(cam, width/2, height/2,zoom,zoom);
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam);
  float blur = map(sensor0,0,1023,0,25);
  filter(BLUR, blur);
  imageMode(CORNER);
}

void fade(){
  alpha = map(sensor0, 0, 1023, 0, 255);
  alpha2 = map(sensor1, 0, 1021, 0, 255 );
  image(cam, 0, 0, width, height);
  tint(alpha);
  fill(255,alpha2);
  rect(0,0,width,height);
}
 


