Die dice1;

void setup()
{
  noLoop();
  size(500, 500);
  background(255);

  dice1 = new Die(width/2 + 85, height/2 + 75);
}

void draw()
{
  dice1.show();
  //your code here
}

void mousePressed()
{
  redraw();
}


// Class Die, models one single role of a six sided die
class Die 
{
  //variable declarations here
  double roll = (Math.random() * 6 + 1);
  int x_pos;
  int y_pos;

  Die(int x, int y) //constructor
  {
    x_pos = x;
    y_pos = y;
    //variable initializations here
  }
  void roll()
  {
    double roll;
    roll = (Math.random() * 6 + 1);
    //your code here
  }
  void show()
  {
    pushMatrix();
    rect(x_pos, y_pos, 80, 80, 10);
    if (roll == 1) {
      fill(0);
      ellipse(x_pos + 40, y_pos + 40, 10, 10);
    }
    if (roll == 2) {
      fill(0);
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);
    }
    if (roll == 3) {
      fill(0);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);
      ellipse(x_pos + 40, y_pos + 40, 10, 10);
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
    }
    if (roll == 4) {
      fill(0);
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);      
      ellipse(x_pos + 60, y_pos + 60, 10, 10);
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
    }
    if (roll == 5) {
      fill(0);
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);      
      ellipse(x_pos + 60, y_pos + 60, 10, 10);
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 40, y_pos + 40, 10, 10);
    }
    if (roll == 6) {
      fill(0);
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);      
      ellipse(x_pos + 60, y_pos + 60, 10, 10);
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 40, 10, 10);
      ellipse(x_pos + 60, y_pos + 40, 10, 10);
    }
    popMatrix();
    //your code here, this will draw what you imagine a die to look like
  }
}
