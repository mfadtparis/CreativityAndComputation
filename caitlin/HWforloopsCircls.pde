void setup(){
size(600,600);
}

void draw(){
for(int i = 0; i < width; i+=10){
  fill(i*10);
  ellipse(300,300,i,i);
}
}

