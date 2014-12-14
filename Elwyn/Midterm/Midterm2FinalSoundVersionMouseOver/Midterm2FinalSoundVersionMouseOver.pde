import ddf.minim.*;

Minim minim;
AudioPlayer player;

int vW = 0;
int vH = 0;
float endX;
float endY;


void setup() {
  size (800, 800, P3D);
  background(0);
  frameRate (10);
  vW = width;
  vH = height;
  frameRate = 10;
  minim = new Minim(this);
  player = minim.loadFile("MsMashSmash2.wav");
  player.play();
}

void draw() {
  stroke (random(200, 255));
  strokeWeight (random(.001, 1));
  for (int x = 0; x < player.bufferSize () -1; x = x + 500) {
    for (int y = 0; y < player.bufferSize () -1; y = y + 500) {
      {
        line (vW/2, vH/2, x, y);
        line (vW/2, vH/2, x, endY);
        line (vW/2, vH/2, endX, y);
        line (vW/2, vH/2, endX, vH);
        line (vW/2, vH/2, vW, endY);
      }
    }
    endX = endX + 10;
    endY = endY + 10;
  }
  vW = mouseX;
  vH = mouseY;
}

void keyPressed() {
  background (0);

  for (int x = 0; x < vW; x = x + 10) {
    for (int y = 0; y < vH; y = y + 10) {
      stroke (random (100, 200));
      strokeWeight (random(.01, 1));
      line (vW/2, vH/2, x, y);
    }
  }
  for (int i = 0; i < player.bufferSize () - 1; i++)
  {
    float x1 = map( i, 400, player.bufferSize(), 400, vW );
    float x2 = map( i+1, 400, player.bufferSize(), 400, vW );
    line( x1, 50 + player.left.get(i)*50, x2, 50 + player.left.get(i+1)*50 );
    line( x1, 150 + player.right.get(i)*50, x2, 150 + player.right.get(i+1)*50 );
    line( x1, 750 + player.left.get(i)*50, x2, 750 + player.left.get(i+1)*50);
    line( x1, 700 + player.right.get(i)*50, x2, 700 + player.left.get(i+1)*50);
  }
}

void mousePressed () {
  background (0);
  endX = endX;
  endY = endY;
  stroke (random(100, 255));
  strokeWeight(random(.1, 1));
  for (int x = 0; x < vW; x = x + 15) {
    for (int y = 0; y < vH; y = y + 15) {
      line (vW/2, vH/2, x, y);
    }
  }
}

