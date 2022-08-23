class Nave {
  float px, py, tam;
  float dx;
  Nave() {
    px = 100;
    py = 200;
    tam = 50;
    dx = random(1, 3);
  }
  Nave (float ppx, float py_, float tam) {
    px = ppx;
    py = py_;
    this.tam = tam;
    dx = random(1, 3);
  }
  void dibujar() {
    fill(40, 200, 200, 100);
    ellipse(px, py, tam, tam);
    fill(0, 200, 0);
    ellipse(px, py, tam/2, tam);
    fill(100);
    triangle(px-tam, py, px+tam, py, px, py+tam);
  }
  void mover() {
    if (px>width+tam/2) {
      px = -tam;
      py = random(height/2);
      dx = random(2, 4);
    }
    px+= dx;
  }
}
