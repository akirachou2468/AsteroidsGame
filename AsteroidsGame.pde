//your variable declarations here
Spaceship s;

Star stars[] = new Star[200];
ArrayList <Asteroids> rocks = new ArrayList <Asteroids>();
ArrayList <Bullet> shoot = new ArrayList <Bullet>();
public void setup() 
{
  size(500, 500);
  s = new Spaceship();
  for (int i = 0; i<200; i++) {
    stars[i] = new Star();
  }
  for (int f = 0; f<30; f++) {
    rocks.add(new Asteroids());
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
  for (int f = 0; f<rocks.size(); f++) {
    rocks.get(f).show();
    rocks.get(f).move();
    for (int j = 0; j<shoot.size(); j++) {
      if ( dist(rocks.get(f).getX(), rocks.get(f).getY(), shoot.get(j).getX(), shoot.get(j).getY()) <= 10 ) {
        rocks.remove(f);
        shoot.remove(j);
        break;
      }
    }
    
  }
  for (int j = 0; j<shoot.size(); j++) {
    shoot.get(j).show();
    shoot.get(j).move();
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
  if (key == 'f') {
    shoot.add(new Bullet(s));
  }
}
