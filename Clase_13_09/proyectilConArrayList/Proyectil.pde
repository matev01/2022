class Bala {
  int bx, by, btam; // posiciòn y tamaño de la bala
  boolean disparada ; // para saber si se disparó o no

  Bala(int bx_, int by, boolean disparada_) {
    disparada = disparada_;
    bx = bx_;
    this.by = by;
    btam = 20;
  }
  void dibujar() {
    fill(0, 255, 0);
    ellipse(bx, by, btam/2, btam);
  }

  void mover() {
    if (disparada && by>-20) {
      by -=10; // se mueve la bala
    } else {
      disparada = false;
    }
  }
  void disparaBala() {
    disparada = true;
  }
}
