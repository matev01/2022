class Madre extends Abuela {
  float dx;
  Madre(float x, float y, float t) {
    super(x, y, t);
    dx = random(-4, -2);
  }
  void dibujarMadre() {
    fill(0, 200, 0); 
    noStroke();
    circle(x, y, t);
    dibujarAbuela();
    mover();
  }
  void mover() {
    /*if (x<0) {
     x = width;
     } else {
     x = x;
     }*/
    x = x<0 ? width : x;
    x+= dx;
  }
}
