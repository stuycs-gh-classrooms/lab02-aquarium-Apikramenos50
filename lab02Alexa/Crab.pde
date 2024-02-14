class Crab extends Animal {
  //Instance Variables
  boolean clash;
  
  //Constructor(s)
  Crab (int x, Tank t) {
    super(x, int(random(t.ty+t.th-t.flrHeight, height)));
    aspeed.x=int(random(-5, 6));
    aspeed.y=int(random(-5, 6));
    while (aspeed.x == 0) {
      aspeed.x=int(random(-5, 6));
    }
    while (aspeed.y == 0) {
      aspeed.y=int(random(-5, 6));
    }
    asiz/=2;
    type=2;
    aspeed.y=0;
  }
  //Methods
  
  void display() {
    image(img1, apos.x-50, apos.y-50, 100, 100);
  }
}
