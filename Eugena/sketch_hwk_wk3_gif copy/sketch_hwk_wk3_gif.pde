import gifAnimation.GifMaker;

void setup(){
  size(200,200);
  frameRate(12);
  
  gifExport = new GifMaker(this, "export.gif");
  gifExport.setRepeat(0);
  gifExport.setTransparent(0,0,0);
}

void draw(){
  background (0);
  fill(255);
  ellipse(mouseX,mouseY, 10,10);
  
  gifExport.setDelay(1);
  gifExport.addFrame();
}

void mousePressed(){
  gifExport.finish();
}
