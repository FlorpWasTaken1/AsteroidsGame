//your variable declarations here
Spaceship ship = new Spaceship();
Star[] stars = new Star[500];
public void setup() 
{
  size(800,800);
  for(int i = 0;  i < stars.length; i++){
   stars[i] = new Star(); 
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0;  i < stars.length; i++){
   stars[i].show(); 
  }
  ship.move();
  ship.show();

}
public void keyPressed()
{
  if(key == 'w'){
    ship.accelerate(1);}
  if(key == 'h'){
    ship.goHyper();}
  if(key == 'a'){
    ship.turn(-30);}
  if(key == 'd'){
    ship.turn(30);}
  if(key == 's'){
    ship.myXspeed /= 2;
    ship.myYspeed /= 2;
  }
}
