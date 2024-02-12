Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;

PImage img0;
PImage img1;

void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
  img0 = loadImage("puffer-removebg-preview.png");
  img1 = loadImage("crab-removebg-preview.png");
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
  /* for (int i = 0; i <t.numAnimals; i++) {
    if (t.a.get(i).type == 1) {
      image(img0, t.a.get(i).apos.x-50, t.a.get(i).apos.y-50, 100, 100);
    }
    else {
      image(img1, t.a.get(i).apos.x-50, t.a.get(i).apos.y-50, 100, 100);
    }
    
  }
  */
}

void mouseClicked() {
  t.addAnimal(mouseX, mouseY);
}
