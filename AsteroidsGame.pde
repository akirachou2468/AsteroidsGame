//your variable declarations here
Spaceship s;
Star stars[] = new Star[200];
Asteroids rocks[] = new Asteroids[30];
public void setup() 
{
  size(500, 500);
  s = new Spaceship();
  for (int i = 0; i<200; i++) {
    stars[i] = new Star();
  }
  for (int f = 0; f<rocks.length; f++) {
    rocks[f] = new Asteroids();
  }
}
public void draw() 
{
  background(0);
  s.show();
  s.move();
  for (int i = 0; i<200; i++) {
    stars[i].show();
  }
  for (int f = 0; f<rocks.length; f++) {
    rocks[f].show();
    rocks[f].move();
  }
}
public void keyPressed() {
  if (key == 'a') {
    s.turn(-10);
  }
  if (key == 'd') {
    s.turn(10);
  }
  if (key == 'w') {
    s.accelerate(0.2);
  } 
  if (keyCode == TAB) {
    s.myCenterX = (int)(Math.random()*500);
    s.myCenterY = (int)(Math.random()*500);  
    s.myDirectionX = 0;
    s.myDirectionY = 0;  
    s.myPointDirection = (int)(Math.random()*360);
  }
}
