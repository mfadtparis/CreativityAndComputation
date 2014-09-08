/**
 * Relativity. 
 * 
 * Each color is perceived in relation to other colors. The top and bottom 
 * bars each contain the same component colors, but a different display order 
 * causes individual colors to appear differently. 
 */
 
color a, b, c, d, e;

void setup() {
  size(640, 360);
  noStroke();
  a = color(35, 61, 219);
  b = color(162, 170, 214);
  c = color(37, 171, 193);
  d = color(34, 91, 147);
  e = color(1, 65, 131);
  noLoop();  // Draw only one time
}

void draw() {
  drawBand(a, b, c, d, e, 0, width/150);
  drawBand(c, a, d, b, e, height/2, width/50);
}

void drawBand(color v, color w, color x, color y, color z, int ypos, int barWidth) {
  int num = 5;
  color[] colorOrder = { v, w, x, y, z };
  for(int i = 0; i < width; i += barWidth*num) {
    for(int j = 0; j < num; j++) {
      fill(colorOrder[j]);
      rect(i+j*barWidth, ypos, barWidth, height/2);
    }
  }
}






