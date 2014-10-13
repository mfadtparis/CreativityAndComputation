size(400,400);

for(int i = 0; i < width; i+=30){
//repeat while i is less than width 
for(int j = 0; j < height; j+=30){

  
fill(j + 100, j + 50, i + 50);
ellipse(i, j, 15, 15);


}}
