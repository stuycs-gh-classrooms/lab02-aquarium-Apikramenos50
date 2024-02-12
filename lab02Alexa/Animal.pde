class Animal {
    //Instance Variables
    PVector apos;
    PVector aspeed;
    int asiz;
    color acolr;
    int type;
    
   Animal() {
    apos= new PVector(width/2, height/2); 
    aspeed = new PVector();
    aspeed.x=int(random(-5, 6));
    aspeed.y=int(random(-5, 6));
    acolr=color(int(random(255)), int(random(255)), int(random(255)));
    asiz=40;
    type=0;
   }
   
   Animal(int x, int y) {
    apos= new PVector(x, y); 
    aspeed = new PVector();
    aspeed.x=int(random(-5, 6));
    aspeed.y=int(random(-5, 6));
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
  
}
