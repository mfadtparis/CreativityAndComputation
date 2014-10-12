import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.video.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class john extends PApplet {


Movie myMovie;

public void setup (){
  size(480,640,P2D);
  myMovie = new Movie(this, "john.mov");
  myMovie.loop();
}

public void movieEvent(Movie myovie) {
  myMovie.read();
}

public void draw() {  
  image(myMovie, -380, 0);
  tint(mouseX,mouseY,255);

;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "john" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
