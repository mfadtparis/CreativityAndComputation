// tree is not showing up.

PShape tree;

void setup(){
  size (500, 500, P2D);
  
  tree = createShape();
  tree.beginShape();
  
  // decorative elements
  tree.fill(#0EC139);
  tree.noStroke();
  
  // tree vertices
  tree.vertex(50, -20);
  tree.vertex(20, -50);
  tree.vertex(30, -60);
  
  tree.vertex(80, -50);
  tree.vertex(70, -60);
  
  tree.endShape(CLOSE);
  
}
