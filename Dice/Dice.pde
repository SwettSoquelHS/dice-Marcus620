Die[] dice = new Die[10];
int roll;
int total;

void setup()
{
  noLoop();
  size(500, 500);
  background(0);

  dice[0] = new Die(width/2 + 100, height/2 - 70);
  dice[1] = new Die(width/2 - 50, height/2 - 70);
  dice[2] = new Die(width/2 - 200, height/2 - 70);  
  dice[3] = new Die(width/2 + 100, height/2 + 75);
  dice[4] = new Die(width/2 - 50, height/2 + 75);
  dice[5] = new Die(width/2 -200, height/2 + 75);
  dice[6] = new Die(width/2 + 100, height/2 - 200);
  dice[7] = new Die(width/2 - 50, height/2 - 200);
  dice[8] = new Die(width/2 -200, height/2 - 200);
}

void draw()
{
  background(0);
  dice[0].show();
  dice[1].show();
  dice[2].show();
  dice[3].show();
  dice[4].show();
  dice[5].show();
  dice[6].show();
  dice[7].show();
  dice[8].show();
 
  textSize(20);
  text("Total:" + total, 205, 450);
}

void mousePressed()
{
  total = 0;
  redraw();
}

class Die 
{
  //variable declarations here
  int x_pos;
  int y_pos;

  Die(int x, int y)
  {
    x_pos = x;
    y_pos = y;
  }
  void roll()
  {
  }
  void show()
  {
    roll = (int)(Math.random() * 6 + 1);
    rect(x_pos, y_pos, 80, 80, 10);
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    if (roll > 0 && roll < 2) {
      ellipse(x_pos + 40, y_pos + 40, 10, 10);
      total = total + 1;
    }
    if (roll > 1 && roll < 3) {
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);
      total = total + 2;
    }
    if (roll > 2 && roll < 4) {
      ellipse(x_pos + 20, y_pos + 60, 10, 10);
      ellipse(x_pos + 40, y_pos + 40, 10, 10);
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      total = total + 3;
    }
    if (roll > 3 && roll < 5) {
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);      
      ellipse(x_pos + 60, y_pos + 60, 10, 10);
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      total = total + 4;
    }
    if (roll > 4 && roll < 6) {
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);      
      ellipse(x_pos + 60, y_pos + 60, 10, 10);
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 40, y_pos + 40, 10, 10);
      total = total + 5;
    }
    if (roll > 5 && roll < 7) {
      ellipse(x_pos + 60, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 60, 10, 10);      
      ellipse(x_pos + 60, y_pos + 60, 10, 10);
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 40, 10, 10);
      ellipse(x_pos + 60, y_pos + 40, 10, 10);
      total = total + 6;
    }
    fill(255);
  }
}
