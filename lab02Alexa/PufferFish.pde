class PufferFish extends Animal {
  //Instance Variables
  
  //Constructor(s)
  PufferFish (int x, int y) {
    super(x, y);
    type=1;
  }
  //Methods
  void display() {
    image(img0, apos.x-50, apos.y-50, 100, 100);
  }
}
