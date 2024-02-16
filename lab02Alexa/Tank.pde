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
    }
  }
  
  void addAnimal(int x, int y, int ani) {
    if (ani == 1) {
      PufferFish l = new PufferFish(x, y);
      a.add(l);
    }
    else  if (ani == 2) {
      Crab l = new Crab(x, this);
      a.add(l);
    }
    else  if (ani == 3) {
      Bettafish l = new Bettafish(x, y);
      a.add(l);
    }
    else  if (ani == 4) {
      Turtle l = new Turtle(x, y);
      a.add(l);
    }
    numAnimals++;
  }
  
  void moveAnimals() {
    for (int i = 0; i < numAnimals; i++) {
      a.get(i).move(this);
    }
  }
  
}
