class Bola {
  float px, py, tam;
  float dx, dy;
  Bola(float px, float py) {
    tam = random(20, 40);
    dx = random(-2, 2);
    dy = random(-2, 2);
  }
  void dibujar() {
    noFill();
    stroke(0, 255, 255);
    circle(px, py, tam);
  }
  void mover() {
    px+= dx;
    py += dy;
  }
}
