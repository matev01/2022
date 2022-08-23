class Bala {
  int bx, by, btam;
  boolean disparada;
  Bala() {
    btam = 40;
    bx = width/2;
    by = height-btam;
    disparada = false;
  }
  void dibujar() {
    fill(255, 0, 0);
    ellipse(bx, by, btam/2, btam);
  }
  void mover() {
    if (disparada && by>0) {
      by -= 10;
    } else {
      by = height-btam;
      disparada = false;
    }
  }
  void disparar() {
    disparada = true;
  }
}
