import processing.video.*;

Movie myVideo;


void setup(){
  size(500,500);
  myVideo = new Movie(this, "StreetDance.mov");
  myVideo.play();
  myVideo.jump(92);
  myVideo.speed(.4);
}

void draw(){
  if(myVideo.available()){
    myVideo.read();
  }
  image(myVideo,0,0);
}
