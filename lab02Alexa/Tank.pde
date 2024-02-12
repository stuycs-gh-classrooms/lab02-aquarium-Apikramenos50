class Tank {
  //Instance Variables 
  int tx;
  int ty;
  int flrHeight;
  int tw;
  int th;
  ArrayList<Animal> a; 
  int numAnimals;
  
  //Constructor
  Tank(int x, int y, int w, int h, int fh) {
    tx=x;
    ty=y;
    tw=w;
    th=h;
    flrHeight=fh;
    a= new ArrayList<Animal>();
    numAnimals=0;
  }
  
  //Methods
  void display() {
    //Water
    fill(#B2F5F4);
    rect(tx, ty, tw, th); 
    //Sand
    fill(#EADF9F);
    rect(tx, ty+th-flrHeight, tw, flrHeight);
    //top of tank
    fill(#5A787C);
    rect(tx, ty, tw, flrHeight/2);
    //Display animals?
    for (int i = 0; i < numAnimals; i++) {
      a.get(i).display();
      a.get(i).move(this);
    }
  }
  
  void addAnimal(int x, int y) {
    if (int(random(51)) < 50) {
      SwordFish l = new SwordFish(x, y);
      a.add(l);
    }
    else {
      Crab l = new Crab(x, y);
      a.add(l);
    }
    numAnimals++;
  }
  
}
