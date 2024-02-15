class Turtle extends Animal {
  PImage sprite;
  int size;
  boolean flipH;
  boolean hungry;
  int hunger;
 
  Turtle(int gx, int gy) {
    super(gx, gy);
    if (aspeed.x > 0) {
      flipH = true;
    }
  }
 
  void move() {
    apos.x += aspeed.x;
    if (apos.x + asiz >= width || apos.x <= 0) {
      aspeed.x *= -1;
      flipH = !flipH;
    }
  }
 
  void display() {
    if (!flipH) {
      sprite = loadImage("images-removebg-preview.png");
      image(sprite, apos.x, apos.y, 50, 50);
    }
   
    else {
      sprite = loadImage("images-removebg-preview.png");
      image(sprite, apos.x, apos.y, 50, 50);
    }
    if (hungry) {
      //new display
    }
  }
 
 void timeForLunch(int x, int y) {
   if (dist(x, y, apos.x, apos.y) < asiz/2) {
     hunger++;
   }
 }
 
 void die() {
   if (hunger < 0) {
     t.numAnimals--;
     t.a.remove(this);
   }
 }
 
}
