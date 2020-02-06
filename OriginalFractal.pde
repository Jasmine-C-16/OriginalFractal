public void setup(){
	size(900,900);
	background(0);
	rectMode(CENTER);
}

public void draw(){
	fill(200,123,250);
	fractal(450,450,900);


}

public void fractal(int x,int y, int z){
	if (z<100){
		noFill();
		//fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		stroke(232,165,54);
		rect(x+z/2,y+z/2,z/2,z/2);
		rect(x+z/2,y+z/2,z*2,z*2);
		rect(x-z/2,y-z/2,z/2,z/2);
		rect(x-z/2,y-z/2,z*2,z*2);
		//rect(x,y+20,z/2,z/2);
		//rect(x-20,y,z/2,z/2);
	}
	else {
		//fractal(x+z*2,y+z*2,z/2);
		//fractal(x+z/2,y+z/2,z/2);
		fractal(x-z,y-z,z/2);
		fractal(x+z,y+z,z/2);
		fractal(x+z/2,y+z/2,z/2);
		fractal(x+z,y-z,z/2);
		fractal(x-z,y+z,z/2);
	}
}