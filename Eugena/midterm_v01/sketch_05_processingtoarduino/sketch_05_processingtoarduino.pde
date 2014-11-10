// continuation of tutorial from sketch_04_processingtoarduino

import processing.serial.*;

Serial myPort; // create object from Serial class

void setup(){
  size (200,200);
  String portName = Serial.list()[4];
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  if (mousePressed == true){
    myPort.write('1');
    println("THISISATESTFORTHEMIDTERM");
  }  
    else{
      myPort.write('0');
    }
}

