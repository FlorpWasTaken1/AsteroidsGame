class Spaceship extends Floater  
{   
    //your code here
    Spaceship(){
      corners = 3;
      xCorners = new int[]{-8,16,-8};
      yCorners = new int[]{-8,0,8,0};
      myColor = 255;
      myCenterX = 200;
      myCenterY = 200;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      
      
    }
    public void goHyper(){
      myCenterX = (int)(Math.random()*400);
      myCenterY = (int)(Math.random()*400);
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = (int)(Math.random()*360);
    }

}
