//your variable declarations here
Spaceship ship = new Spaceship();
Star[] stars = new Star[500];
ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
public void setup() 
{
  size(800,800);
  for(int i = 0;  i < stars.length; i++){
   stars[i] = new Star(); 
  }
  for(int i = 0; i< 20; i++){
  rock.add(new Asteroid());
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
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).move();
    rock.get(i).show();
    float d = dist(ship.getMyCenterX(), 
    ship.getMyCenterY(),
    rock.get(i).getMyCenterX(), 
    rock.get(i).getMyCenterY());
    if(d <= 20){
      rock.remove(i);
    }
  }
    
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
    ship.slowSpeed(2);}
}
