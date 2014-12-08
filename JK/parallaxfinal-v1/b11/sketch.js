var b;

function setup() {
  createCanvas(800, 419);

  // specify multiple formats for different browsers
  b = createVideo(['assets/b11.mp4', 
                   'assets/b11.webm']);
  b.loop();
  b.hide(); 
  
}


function draw() {
  clear();
  image(b,120,80); // draw the video frame to canvas

}

function mousePressed() 
{
  tint(random(255), random(255), random(255));
  
}