class Asteroid extends Floater
{
  private double rotSpeed;
  Asteroid(){
    rotSpeed = Math.random();
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myColor = (int)(Math.random()*105)+150;
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = Math.random();
    myYspeed = Math.random()*0.95;
    myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getMyCenterX(){return (float)myCenterX;}
  public float getMyCenterY(){return (float)myCenterY;}
  public void setMyCenterX(double n){myCenterX = n;}
  public void setMyCenterY(double n){myCenterY = n;}
//
}
