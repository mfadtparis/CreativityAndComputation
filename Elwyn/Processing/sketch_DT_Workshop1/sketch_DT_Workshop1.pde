
import oscP5.*;
import netP5.*;
 
// open sound control object
OscP5 oscP5;
 
// location of broadcast server
NetAddress myBroadcastLocation;
 
int myButtonId = 0; // we can be 0 to 7
int buttonValue = 0; // will be 1 or 0
 
void setup() {
 
  size(400, 400);
 
  // we will listen on port 9005
  oscP5 = new OscP5(this, 9005);
 
  // this is server location so we can connect to it
  myBroadcastLocation = new NetAddress("10.1.130.128", 9004);
 
 
}
 
 
void draw() {
 
  if(buttonValue == 1){
    background(255);
  }else{
    background(0);
  }
 
  fill(255);
  textSize(12);
  text("press 'c' to connect to server",20,20);
 
}
 
 
 
 
void keyPressed() {
 
  OscMessage m;
 
  if( key == 'c'){
    m = new OscMessage("/connect");
    oscP5.send(m, myBroadcastLocation);  
  }else if( key == 'd'){
    m = new OscMessage("/disconnect");
    oscP5.send(m, myBroadcastLocation);
  }
 
}
 
 
/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
 
  // we check if the message is a button
  if ( theOscMessage.checkAddrPattern("/button")) {
   
    // get the id of the button
    int buttonId = theOscMessage.get(0).intValue();
   
    // get the value of that button (0 is not pressed, 1 pressed)
    int val = theOscMessage.get(1).intValue();
   
    // check if this is the button we are using and set accordingly
    if(buttonId == myButtonId){
      buttonValue = val;
    }
 
  }
 
}
