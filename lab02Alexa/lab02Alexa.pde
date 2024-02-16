Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

//This determines how many frames pass before one hunger point (out of five) is decreased. I made it a global variable so it's easier to test.
int whenHungry=300;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
    t.display();
  t.moveAnimals();
  puffUP(t);
  gettinHungry();
}

void puffUP(Tank t) {
  for (int i = 0; i < t.numAnimals-1; i++) {
     t.a.get(i).form(false);
    for (int f = 0; f < t.numAnimals; f++) {
      if (t.a.get(i).collide(t.a.get(f))) {
        t.a.get(i).form(true);
      }
    }
  }
}

void gettinHungry () {
  for (int i = 0; i < t.numAnimals; i++) {
    t.a.get(i).hungry();
  }
}

void mouseReleased() {
  println("a");
  for (int i = 0; i < t.numAnimals; i++) {
    t.a.get(i).timeForLunch(mouseX, mouseY);
  }
}

void mouseClicked() {
  //t.addAnimal(mouseX, mouseY);
}

void keyPressed() {
  if (key == '1') {
    t.addAnimal(mouseX, mouseY, 1);
  }
  else if (key == '2'){
    t.addAnimal(mouseX, mouseY, 2);
  }
  else if (key == '3'){
    t.addAnimal(mouseX, mouseY, 3);
  }
  else if (key == '4'){
    t.addAnimal(mouseX, mouseY, 4);
  }
}
