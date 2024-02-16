class Turtle extends Animal {
  PImage sprite;
  int size;
  boolean flipH;
  boolean hungry;
  int hunger;
  int time;
  
 /*TURTLE: 
  - display shows a turtle's change in direction 
 - dies when "hunger" goes below zero  (you feed it by clicking on it, the circle above is green when it's fine and red when it's hungry)
 - moves "in circles" (keeps the same x value, switches directions after 150 frames)
  */
 
  Turtle(int gx, int gy) {
    super(gx, gy);
    time=0;
    if (aspeed.x > 0) {
      flipH = true;
    }
    hungry = false;
    hunger=5;
  }
 
  void move(Tank t) {
    time++;
    if (time % 150 == 0) {
      aspeed.x*=-1;
      flipH=!flipH;
    }
    apos.x+= aspeed.x;
    if (apos.x + asiz >= width || apos.x <= 0) {
      aspeed.x *= -1;
      flipH = !flipH;
    }
  }
 
  void display() {
    if (!flipH) {
      sprite = loadImage("turtle2.png");
      image(sprite, apos.x, apos.y, 75, 75);
    }
   
    else {
      sprite = loadImage("turtle1.png");
      image(sprite, apos.x, apos.y, 75, 75);
    }
    if (hungry) {
      fill(255, 0, 0);
      circle(apos.x+asiz, apos.y, 15);
    }
    else {
      fill(0, 255, 0);
      circle(apos.x+asiz, apos.y, 15);
    }
  }
 
 void hungry() {
   if (time % whenHungry == 0) {
     hunger--;
   } 
   if (hunger < 3) {
     hungry=true;
   }
   else {
     hungry=false;
   }
   if (hunger < 0) {
     t.numAnimals--;
     t.a.remove(this);
   }
 }
 
 void timeForLunch(int x, int y) {
   if (dist(x, y, apos.x+30, apos.y+30) < 75) {
     hunger++;
   }
   //println(hunger);
 }
}
