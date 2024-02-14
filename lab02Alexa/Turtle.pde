class Turtle extends Animal {
  PImage sprite;
  int size;
  boolean flipH;
 
 
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
      sprite = loadImage("yellow_bellied_slider.psd.png");
      image(sprite, apos.x, apos.y, 50, 50);
    }
   
    else {
      sprite = loadImage("yellow_bellied_slider.psd_rightH.png");
      image(sprite, apos.x, apos.y, 50, 50);
    }
  }
 
}
