class Tipito {
  int px, py, tam;
  Tipito(int px, int py, int tam) {
    this.px = px;
    this.py = py;
    this.tam = tam;
  }
  void dibujarTipito() {
    fill(0, 0, 255);
    rect(px, py, tam, tam*2);
  }
  void reboteDer() {
    px -= 2;
  }
  void reboteIzq() {
    px += 2;
  }
  void reboteArriba() {
    py += 2;
  }
  void reboteAbajo() {
    py -= 2;
  }
  void mover(int tecla) {
    if (tecla==RIGHT) {
      px += 2;
    }
    if (tecla==LEFT) {
      px -=2;
    }
    if (tecla==UP) {
      py-=2;
    }
    if (tecla==DOWN) {
      py += 2;
    }
  }
}
