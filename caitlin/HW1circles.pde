
size(600,600);
for(int i = width; i > 0; i-=20){
  fill(i/2);
 // fill(300-i/2);
  noStroke();
  ellipse(width/2, height/2, i, i);
}

