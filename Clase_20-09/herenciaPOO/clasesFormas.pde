class Rect extends Movimiento { /* sub Clase adquiere los metodos de la super Clase*/
  Rect(float x, float y, boolean vert) {
    super(x, y, vert);
  }
  void dibujar() {
    fill(255, 0, 0);
    rect(x, y, 30, 30);
    mover();
  }
}
class Circulo extends Movimiento { // sub Clase
  Circulo(float x, float y, boolean vert) {
    super(x, y, vert);
  }
  void dibujar() {
    fill(0, 0, 255);
    ellipse(x, y, 30, 30);
    mover();
  }
}
