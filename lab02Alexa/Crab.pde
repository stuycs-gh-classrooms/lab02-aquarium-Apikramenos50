class Crab extends Animal {
  //Instance Variables
  
  //Constructor(s)
  Crab (Tank t) {
    super(int(random(width)), int(random(t.ty+t.th-t.flrHeight, height)));
    asiz/=2;
    type=2;
    aspeed.y=0;
  }
  //Methods

  void display() {
    image(img1, apos.x-50, apos.y-50, 100, 100);
  }
}
