public void setup(){
	size(600,600);
	background(0);
	rectMode(CENTER);
}

public void draw(){
	fill(200,123,250);
	fractal(300,300,600);

}

public void fractal(int x,int y, int z){
	if (z<10){
		noFill();
		stroke(232,165,54);
		rect(x+20,y+20,z/2,z/2);
		rect(x-20,y-20,z/2,z/2);
		rect(x,y+20,z/2,z/2);
		rect(x-20,y,z/2,z/2);
	}
	else {
		fractal(x/2,y/2,z/2);
		fractal(x+40,y+40,z/2);
		fractal(x,y,z/2);
		fractal(x,y+40,z/2);
		fractal(x+40,y,z/2);
	}
}