int h = 40;
int count =0;
 
void setup() {
  size(500,400);
  background(0, 0, 0);

  noStroke();
  smooth(); 
}
 
void draw() {
 if (count%10==0) { // only do this every few times draw runs
   for (int y=0; y <=height; y+=h) {
       for (int x =0; x<= width; x+=h) {
        //three random values to get the three parts of RGB
         fill(random(0,255), random(0,255), random(0,255));
       
       
       triangle(x+1000, y+700, x, y, 50, 55);
       
      }
    }
 }

}
