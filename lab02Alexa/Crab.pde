class Crab extends Animal {
  PImage img1;
  boolean hungry;
  int hunger;
  int time;
  
  /*CRAB: 
  - can only appear in the sand, so it takes into account the x value of your mouse but not the y
  - dies when "hunger" goes below zero  (you feed it by clicking on it, the circle above is green when it's fine and red when it's hungry)
  - moves side to side only and at a random speed ratio
  */
  
  //Constructor(s)
  Crab (int x, Tank t) {
    super(x, int(random(t.ty+t.th-t.flrHeight, height)));
    apos.y=int(random(t.ty+t.th-t.flrHeight, height));
    aspeed.x=int(random(-5, 6));
    while (aspeed.x == 0) {
      aspeed.x=int(random(-5, 6));
    }
    asiz/=2;
    aspeed.y=0;
    hungry=false;
    time=0;
    hunger=5;
  }
  //Methods
  void move(Tank t) {
    super.move(t);
    time++;
  }
  void display() {
    img1 = loadImage("crab-removebg-preview.png");
    image(img1, apos.x-50, apos.y-50, 100, 100);
    if (hungry) {
      fill(255, 0, 0);
      circle(apos.x, apos.y-40, 15);
    }
    else {
      fill(0, 255, 0);
      circle(apos.x, apos.y-40, 15);
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
   if (dist(x, y, apos.x, apos.y) < 50) {
     hunger++;
   }
   //println(hunger);
 }
}
