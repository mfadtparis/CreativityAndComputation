var img; 

function setup() 
{
  createCanvas(1200, 800);
  img = loadImage("img/click.png");
}
 
function draw()
{

  image(img, 100, 200);


}
 
function mousePressed() 
{


  background(random(255), random(255), random(255));
  
}
