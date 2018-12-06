class Asteroids extends Floater {
  private int rotSpeed = 0;
  public Asteroids() {
    corners = 6;  //the number of corners, a triangular floater has 3   
    int[] xS = {-11,7,13,6,-11,-5};
    int[] yS = {-8,-8,0,10,8,0};
    xCorners = xS;
    yCorners = yS;  
    myColor = color(100,100,100);   
    myCenterX = (Math.random()*500); 
    myCenterY = (Math.random()*500);
    myDirectionX = (Math.random()*4)-2; 
    myDirectionY = (Math.random()*4)-2; //holds x and y coordinates of the vector for direction of travel   
    myPointDirection =(Math.random()*6.28);
    rotSpeed = (int)(Math.random()*5);

  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}  
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}    
  public void setDirectionY(double y){myDirectionY = y;}      
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}   
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
