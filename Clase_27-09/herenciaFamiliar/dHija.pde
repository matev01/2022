class Hija extends Madre {
  float dy;
  Hija(float x, float y, float t) {
    super(x, y, t);
    dy = random(2, 4);
  }
  void dibujarHija() {
    fill(255, 0, 0); 
    noStroke();
    rect(x, y, t, t);
    dibujarMadre();
  }
  void moverHija() {
    y = y>height ? 0: y;
    y += dy;
  }
}
