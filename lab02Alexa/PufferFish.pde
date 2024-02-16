class PufferFish extends Animal {
  //Instance Variables
  boolean puff;
  int scared;
  PImage img0;
  PImage img2;
  
  /*BETTAFISH: 
  - puffs up when in contact with ANY animal (not just PufferFish)
  - dies when it gets too "scared" (if it puffs up too much it just dies from fear)
  - moves up/down diagonally/across with a random speed ratio 
  */
  
  //Constructor(s)
  PufferFish (int x, int y) {
    super(x, y);
    aspeed.x=int(random(-5, 6));
    aspeed.y=int(random(-5, 6));
    while (aspeed.x == 0) {
      aspeed.x=int(random(-5, 6));
    }
    while (aspeed.y == 0) {
      aspeed.y=int(random(-5, 6));
    } 
    puff=false;
    scared=0;
  }
  
  //Methods
  void display() {
    if (puff) {
      img0 = loadImage("bigPuff-removebg-preview.png");
      image(img0, apos.x-50, apos.y-50, 100, 100);
      scared++;
    }
    else {
      img2 = loadImage("smallPuff-removebg-preview.png");
      image(img2, apos.x-50, apos.y-50, 100, 100);
    }
  }

  
  void form(boolean p) {
    puff = p;
    if (scared > 100) {
      t.numAnimals--;
      t.a.remove(this);
    }
  }
}
