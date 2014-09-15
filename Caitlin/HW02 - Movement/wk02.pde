void setup(){
  size(400,400);
}

void draw(){
  background(#FFFFCC);
  stroke(255);
  //red 
  drawPrettyCircles(mouseX, 50, #FF3300, 50);
  //green
  drawPrettyCircles(150,mouseY, #003300, 100);
  //blue
  drawPrettyCircles(mouseX,mouseY, #0033CC, 80);
  //get the distance of the mouse from the center of the window 
  //float distance = dist(mouseX, mouseY, width/2, height/2);
 // println(distance);
 
 if(mouseX==150 || mouseY==50){
   ellipse(mouseX, mouseY, 50, 50);
 }
 

boolean insideCircle = isMouseInCircle(300,300,25);
if(insideCircle){
  fill(255);
}else{
  fill(0);
}
ellipse(300,300,50,50);
}

 boolean isMouseInCircle(int x, int y, int radius){
 float distance = dist(mouseX, mouseY, x, y);
 if(distance < radius){
   return true;
 }else{
   return false;
 }}


void drawPrettyCircles(int x, int y, color c, int o){
  //x, y are local to the function 
  fill(c, o);
  ellipse(x, y, 75, 350);
  fill(c,o);
  ellipse(x, y, 350, 75);
}

