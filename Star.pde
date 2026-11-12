class Star //note that this class does NOT extend Floater
{
  private int myX, myY,r,g,b;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    r = (int)(Math.random()*255);
    g = (int)(Math.random()*255);
    b = (int)(Math.random()*255);
    
  }
  public void show(){
    noStroke();
    fill(r,g,b);
    ellipse(myX,myY,3,3);
  }
}
