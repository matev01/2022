class Arma {
  int ax, ay, atam;
  Arma() {
    atam = 100;
    ax = width/2;
    ay = height-atam;
  }
  void dibujar() {
    fill(0, 0, 255);
    rect(ax, ay, atam/2, atam);
  }
  void mover(int tecla) {
    if (tecla==RIGHT && ax<width-atam) {
      ax += 2;
    }
    if (tecla==LEFT && ax>0) {
      ax -= 2;
    }
  }
}
