// Creativity and Computation
// Week 2 Arrays and For Loops
// Create an aray of strings and positions and draw on screen

String [] names = {"Jack","Kate","John","Claire","Charlie"};
int [] xpos = new int[names.length];
int [] ypos = new int[names.length];

void setup(){
  size(500,500);
  
  // make random positions
  for( int i = 0; i < names.length; i++){
    xpos[i] = (int)random(width);
    ypos[i] = (int)random(height);
  }
  
}

void draw(){
  
  background(255);
  
  fill(222,20,219);
  textSize(24);
  
  // loop through all names and draw at the saved positions
  for( int i = 0; i < names.length; i++){
    text(names[i],xpos[i],ypos[i]);
  }
  
}
