import processing.serial.*;

Serial myPort;        // The serial port
int radius = 10;

void setup () {
  // set the window size:
  size(400, 300);        

  // List all the available serial ports
  println(Serial.list());
  
  // I know that the first port in the serial list on my mac
  // is always my  Arduino, so I open Serial.list()[0].
  // Open whatever port is the one you're using.
  myPort = new Serial(this, Serial.list()[5], 9600);
  
  // don't generate a serialEvent() unless you get a newline character:
  myPort.bufferUntil('\n');
  
  // set inital background:
  background(0);
}


void draw () {

  ellipse(width/2,height/2,radius*2,radius*2);

}

void serialEvent (Serial myPort) {
  
  // get the ASCII string:
  String inString = myPort.readStringUntil('\n');

  if (inString != null) {
    // trim off any whitespace:
    inString = trim(inString);
    
    // convert to an int and map to radius range
    int inByte = int(inString);
    inByte = (int)map(inByte, 0, 1023, 0, width/2);
    radius = inByte;
  }

}

