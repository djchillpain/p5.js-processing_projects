let i=25;
let rand=1;
let sw=true;

function setup() {
	createCanvas(400, 400, P2D);
  	background(0);
  	noStroke();
  	rectMode(CENTER);
}

function draw() {
	translate(200, 200);
  	for(i=25;i>=1;i--){
    	fill(r(i, rand), g(i, rand), b(i, rand));
      	rotate(PI/(i+rand)*100)
      	if(sw){
        	rand = rand + 0.008;
        }else{
        	rand = rand - 0.008;
        }
      	rect(0, 0, i*10, i*10);
    }
  if(rand > 100)sw=false;
  if(rand < -100)sw = true;
}

function r(i, rand){
	return 255*abs(sin((i+rand)/50));
}

function g(i, rand){
	return 255*abs(sin((i+rand)/50 + 255));
}

function b(i, rand){
	return 255*abs(sin((i+rand)/50 + 510));
}