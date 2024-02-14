Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

PImage img0;
PImage img1;
PImage img2;
PImage sprite;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
  img0 = loadImage("bigPuff-removebg-preview.png");
  img1 = loadImage("crab-removebg-preview.png");
  img2 = loadImage("smallPuff-removebg-preview.png");
}//setup


void draw() {
  background(150);
    t.display();
  t.moveAnimals();
  puffUP(t);
}

void puffUP(Tank t) {
  for (int i = 0; i < t.numAnimals; i++) {
     t.a.get(i).form(false);
    for (int f = 0; f < t.numAnimals; f++) {
      if (t.a.get(i).collide(t.a.get(f))) {
        t.a.get(i).form(true);
      }
    }
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
