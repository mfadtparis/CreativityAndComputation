import processing.video.*;
Movie myMovie;

void setup (){
  size(480,640,P2D);
  myMovie = new Movie(this, "john.mov");
  myMovie.loop();
}

void movieEvent(Movie myovie) {
  myMovie.read();
}

void draw() {  
  image(myMovie, -380, 0);
  tint(mouseX,mouseY,255);

;
}

