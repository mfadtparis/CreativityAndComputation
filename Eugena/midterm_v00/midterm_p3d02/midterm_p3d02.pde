void setup(){
  size(500,500, P3D);
  background(0);

}

void draw(){
  //beginShape();
  //vertex(-100, -100, 0);
  //vertex(100, -100, 0);
  //vertex(100, 100, 0);
  //vertex(-100, 100, 0);
  //endShape(CLOSE);
  
  translate(100,100,0);
  if (mousePressed){
    lights();
  
  noStroke();
  fill(255);
  sphere(50);
  }
}
