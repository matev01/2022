class Personaje {
  int px, py, tam;
  Personaje(int px, int py, int tam) {
    this.px = px;
    this.py = py;
    this.tam = tam;
  }
  void dibujaPersonaje() {
    fill(0, 0, 255);
    rect(px*tam, py*tam, tam, tam);
    println("px "+ px + " py "+ py);
  }

  void moverDer() {
    px++;
  }
  void moverIzq() {
    px--;
  }
  void moverAbajo() {
    py++;
  }
  void moverArriba() {
    py--;
  }
}
