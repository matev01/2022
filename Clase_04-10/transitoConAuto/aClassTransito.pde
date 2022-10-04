class Transito {

  Baches [] b = new Baches[10];
  Auto a;
  Transito() {
    a = new Auto(200, 300, 40, 0);
    for (int i=0; i<b.length; i++) {
      b[i] = new Baches(random(width), random(height), random(30, 60));
    }
  }
  void dibujar() {
    for (int i=0; i<b.length; i++) {
      b[i].dibujarBache();
    }
    a.dibujar();
    a.mover();
  }
  void chocar() {
    for (int i=0; i<b.length; i++) {
      float distan = dist(a.x, a.y, b[i].x, b[i].y);
      if (distan<b[i].d/2) {
        a.patinar();
      }
    }
  }
  void moverAuto(int tec) {
    if (tec == RIGHT) {
      a.girarDerecha();
    }
    if (tec ==LEFT) {
      a.girarIzquierda();
    }
  }
}
