class Bettafish extends Animal {
  ArrayList<Animal> animals;

  Bettafish(int x, int y) {
    super(x, y);
    aspeed.x = 2;
    aspeed.y = 2;
    //this.animals = animals;
  }

  void move(Tank t) {
    super.move(t);
    for (int i = 0; i < t.a.size(); i++) {
        Animal otherAnimal = t.a.get(i);
        if (otherAnimal != this && otherAnimal.getClass() == Bettafish.class) {
            if (apos.x + asiz >= otherAnimal.apos.x &&
                    apos.x <= otherAnimal.apos.x + otherAnimal.asiz &&
                    apos.y + asiz >= otherAnimal.apos.y &&
                    apos.y <= otherAnimal.apos.y + otherAnimal.asiz) {
                int sof = (int) random(2);
                if (sof == 0) {
                    t.a.remove(i);
                } else {
                    t.a.remove(this);
                }
                t.numAnimals--;
            }
        }
    }
  }

  void display() {
    fill(0, 0, 255);
    circle(apos.x, apos.y, asiz);
  }
}
