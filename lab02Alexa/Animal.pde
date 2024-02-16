class Animal {
    //Instance Variables
    PVector apos;
    PVector aspeed;
    int asiz;
    color acolr;
    
   Animal() {
    apos= new PVector(width/2, height/2); 
    aspeed = new PVector(1, 1);
    acolr=color(int(random(255)), int(random(255)), int(random(255)));
    asiz=40;
   }
   
   Animal(int x, int y) {
     apos= new PVector(x, y); 
     println(x);
    if (x >= 0) {
      apos.x = 70;
    } 
    else if (x > width) {
      apos.x = width-70;
    }
    if (y < t.ty) {
      apos.y= t.ty+100;
    }
    else if (y > t.ty + t.th - t.flrHeight) {
      apos.y = t.ty + t.th - t.flrHeight-40;
    }
    aspeed = new PVector(1, 1);
    acolr=color(int(random(255)), int(random(255)), int(random(255)));
    asiz=40;
   }


  void move(Tank t) {
    if (apos.x >= t.tx +t.tw - asiz/2 ||
        apos.x <= t.tx+asiz/2) {
        aspeed.x*= -1;
     }
     if (apos.y >= t.ty+t.th - asiz/2-t.flrHeight ||
         apos.y <= t.ty + asiz/2+t.flrHeight/2) {
         aspeed.y*= -1;
      }
     apos.x+= aspeed.x;
     apos.y+= aspeed.y;
  }
  
  void display() {
    fill(acolr);
    circle(apos.x, apos.y, asiz);
  }
 
  void form(boolean p) {
    //Nothing bc this doesn't affect gen 
  }
  
  boolean collide (Animal other) {
    if (other != this) {
      return (dist(this.apos.x, this.apos.y, other.apos.x, other.apos.y) <= (this.asiz/2 + other.asiz/2));
    }
    else {
      return false;
    }
  }
  
    void hungry () {
    //empty because it does not affect gen animals
    }
  
   void timeForLunch(int x, int y) {
     //empty because it does not affect gen animals
   }
 
 void die() {
   //empty because it does not affect gen animals
   }
  
}
