class PufferFish extends Animal {
  //Instance Variables
  boolean puff;
  int scared;
  
  //Constructor(s)
  PufferFish (int x, int y) {
    super(x, y);
    puff=false;
    type=1;
    scared=0;
  }
  
  //Methods
  void display() {
    if (puff) {
      image(img0, apos.x-50, apos.y-50, 100, 100);
      scared++;
      println(scared);
    }
    else {
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
