var john;

function setup() {
  createCanvas(1024, 768);

  // specify multiple formats for different browsers
  john = createVideo(['assets/john.mov', 
                      'assets/john.webm']);
  john.loop();
  john.hide(); 
  
}


function draw() {
  clear();
  image(john,0,0); // draw the video frame to canvas

}

function touchMoved() {
  // do some stuff
  return false;
}