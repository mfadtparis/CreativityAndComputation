void setup()
{
  size(400, 400);
  background(100,140,200);
  for (int i = 0; i < 350; i += 100){
    for(int j = 0; j < 350; j += 100){
    spikes(i, j);
    }
  }

}

void spikes(int x, int y){
  pushMatrix();
  translate(x,y);
  fill(200,140,100);
  stroke(250);
  triangle(5,90,15,40,25,90);
  triangle(25,90,35,55,45,90);
  triangle(45,90,60,10,75,90);
  triangle(75,90,85,50,95,90);
  popMatrix();
 
}
