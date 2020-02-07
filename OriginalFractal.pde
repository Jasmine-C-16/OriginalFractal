public void setup(){
	size(900,900);
	background(50);
	//rectMode(CENTER);
}

public void draw(){
	//fill(200,123,250);
	fill(50);
	fractal(900,900,900);


}

public void fractal(int x,int y, int z){
	if (z<5){
		//noFill();
		stroke(232,165,54);
		
	}
	else {
		//noFill();
		fill(50);
		stroke(232,165,54);
		ellipse(x+z,y+z,z*2,z*2);
		fill(230,140,180);
		ellipse(x+z,y+z,z/2,z/2);

		fill(50);
		ellipse(x-z,y-z,z*2,z*2);
		fill(180,140,180);
		ellipse(x-z,y-z,z/2,z/2);

		fill(50);
		ellipse(x-z,y+z,z*2,z*2);
		fill(180,140,180);
		ellipse(x-z,y+z,z/2,z*2);

		fill(50);
		ellipse(x+z,y-z,z*2,z*2);
		fill(180,140,180);
		ellipse(x+z,y-z,z*2,z/2);

		fractal(x/2,y/2,z/2);
	}
}