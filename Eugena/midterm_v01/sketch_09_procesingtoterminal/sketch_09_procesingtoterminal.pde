// tutorial from https://www.processing.org/reference/open_.html
// trying to see if i can execute terminal commands through processing

// end result desired = having terminal open all programs when the arduino
// sensor reads a certain distance (e.g. 36in from the sensor)

// possible open all apps code from this: http://www.mactalk.com.au/11/2242-opening-all-apps-terminal.html

void setup(){
  size(200,200);
}

void draw(){
}

void mousePressed(){
  println("OPEN SESAME");
  open("/Applications/Processing.app");
  open("/Applications/Calendar.app");
  open("/users/eho/Documents/");
}
