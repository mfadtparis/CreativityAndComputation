size(400, 300);
background(0);
strokeWeight(2);
stroke(255);


for (int x = 0; x < width; x = x + 20) {
  ellipse(x, 150, 0, height);
}

for (int y = 0; y < height; y = y + 20) {
  line(0, y, width, y);
}

