void setup(){
size(600,600);
frameRate(15);
}

float p = 0;
void draw(){
for(int i = 0; i < width; i+=p){
  float r = random(255);
  float g = random(255);
  float b = random(255);
  p = (r+b+g)/3;
  fill(r, g, b);
  rect(i, 0, p, 600);
}
}
