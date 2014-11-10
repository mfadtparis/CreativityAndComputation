var x = 300;
var y = 300;
var rad = 300;
var col = 1;

function setup() {
	createCanvas(600,600);
	background(0);
  
}

function draw() {
  ellipse(x,y,rad,rad);
}

function addCircle(){
	noStroke();
	c = (255*col);
	fill(c);
	console.log(fill);
	ellipse(x,y,rad,rad);
	col = abs(col-1);

	if(rad > 0){
	rad -=10;
}
else {
rad=300;
}

}


