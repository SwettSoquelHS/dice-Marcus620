void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
  background(255,255,255);
  size(750,750);
}

void draw(){
  //your code here
  rect(100,100,100,100);
  rect(325,100,100,100);
  rect(550,100,100,100);
  rect(100,300,100,100);
  rect(325,300,100,100);
  rect(550,300,100,100);
  rect(100,600,100,100);
  rect(325,600,100,100);
  rect(550,600,100,100);
}

void mousePressed(){
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	//variable declarations for your Die instances here
	
	//constructor
	Die(int x, int y){
		//variable initializations here
	}
	
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
		//your code here
	}
}
