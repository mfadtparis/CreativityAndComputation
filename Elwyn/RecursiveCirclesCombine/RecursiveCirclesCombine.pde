import processing.pdf.*;

boolean saveToPdf = false;

int drawMode = 0;

void setup() {
  size(600, 600);
}

void draw() {
  if (saveToPdf == true) {
    beginRecord(PDF, "RecursiveCirclesinSequence.pdf");
  }

  background(0);
  stroke(255);

  switch(drawMode) {
  case 0:
    drawCircleA(width/2, height/2, 300);
    break;
  case 1:
    drawCircleB(width/2, height/2, 300);
    break;
  case 2:
    drawCircleC(width/2, height/2, 300);
    break;
  case 3:
    drawCircleD(width/2, height/2, 300);
    break;
  case 4:
    drawCircleE(width/2, height/2, 300);
    break;
  case 5:
    drawCircleF(width/2, height/2, 300);
    break;
  case 6:
    drawCircleG(width/2, height/2, 300);
    break;
  case 7:
    drawCircleH(width/2, height/2, 300);
    break;
  case 8:
    drawCircleI(width/2, height/2, 300);
    break;
  }

  if (saveToPdf == true) {
    endRecord();
    saveToPdf = false;
  }
}

void keyPressed() {
  if ( key == ' ' ) {
    saveToPdf = true;
  } else if ( key == '1') {
    drawMode = 0;
  } else if ( key == '2') {
    drawMode = 1;
  } else if (key == '3') {
    drawMode = 2;
  } else if (key == '4') {
    drawMode = 3;
  } else if (key == '5') {
    drawMode = 4;
  } else if (key == '6') {
    drawMode = 5;
  } else if (key == '7') {
    drawMode = 6;
  } else if (key == '8') {
    drawMode = 7;
  } else if (key == '9') {
    drawMode = 8;
  }
}

void drawCircleA(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if (radius > 10) {
    drawCircleA(x + radius/2, y, radius/4);
    drawCircleA(x - radius/2, y, radius/4);
    drawCircleA(x, y + radius/2, radius/4);
    drawCircleA(x, y - radius/2, radius/4);
  }
}


void drawCircleB(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    drawCircleB(x + radius/2, y, radius/2);
    drawCircleB(x - radius/2, y, radius/2);
  }
}

void drawCircleC(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if (radius > 10) {
    drawCircleC(x + radius/2, y, radius/2);
    drawCircleC(x - radius/2, y, radius/2);
    drawCircleC(x, y, radius/2);
    drawCircleC(x, y, radius/2);
  }
}

void drawCircleD(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if (radius > 10) {
    drawCircleD(x + radius/2, y, radius/2);
    drawCircleD(x - radius/2, y, radius/2);
    drawCircleD(x, y + radius/2, radius/4);
    drawCircleD(x, y - radius/2, radius/4);
  }
}

void drawCircleE(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if (radius > 10) {
    drawCircleE(x + radius/2, y, radius/2);
    drawCircleE(x - radius/2, y, radius/2);
    drawCircleE(x, y + radius/2, radius/2);
    drawCircleE(x, y - radius/2, radius/2);
  }
}

void drawCircleF(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    drawCircleF(x + radius/2, y, radius/2);
    drawCircleF(x - radius/2, y, radius/2);
    drawCircleF(x, y - radius/2, radius/2);
  }
}

void drawCircleG(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    drawCircleG(x + radius/2, y, radius/2);
    drawCircleG(x - radius/2, y, radius/2);
    drawCircleG(x, y + radius/2, radius/2);
  }
}

void drawCircleH(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 5) {
    drawCircleH(x + radius/2, y, radius/2);
    drawCircleH(x - radius/2, y, radius/2);
    drawCircleH(x, y + radius/2, radius/2);
    drawCircleH(x, y - radius/2, radius/2);
  }
}

void drawCircleI(float x, float y, float radius) {
  noFill();
  ellipse(x, y, radius, radius);
   if (radius > 10) {
    drawCircleI(x + radius/4, y, radius/2);
    drawCircleI(x - radius/4, y, radius/2);
    drawCircleI(x, y + radius/4, radius/2);
    drawCircleI(x, y - radius/4, radius/2);
  }
}

