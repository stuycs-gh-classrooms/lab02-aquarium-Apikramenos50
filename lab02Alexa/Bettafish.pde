class Bettafish extends Animal {
  ArrayList<Animal> animals;

  Bettafish(int x, int y, int w, int h, ArrayList<Animal> animals) {
    super(x, y);
    aspeed.x = 2;
    aspeed.y = 2;
    this.animals = animals;
  }

  void move() {
    super.move();
    for (int i = 0; i < animals.size(); i++) {
        Animal otherAnimal = animals.get(i);
        if (otherAnimal != this && otherAnimal.getClass() == Bettafish.class) {
            if (apos.x + aw >= otherAnimal.apos.x &&
                    apos.x <= otherAnimal.apos.x + otherAnimal.aw &&
                    apos.y + ah >= otherAnimal.apos.y &&
                    apos.y <= otherAnimal.apos.y + otherAnimal.ah) {
                int sof = (int) random(2);
                if (sof == 0) {
                    animals.remove(i);
                } else {
                    animals.remove(this);
                }
            }
        }
    }
  }

  void display() {
    fill(0, 0, 255);
    rect(ax, ay, 40, 20);
  }
}
