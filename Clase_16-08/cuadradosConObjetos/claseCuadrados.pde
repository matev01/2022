class Cuadrado {
  float px, py, dx;
  float tam;
  color colorCuadrado;
  Cuadrado() {
    tam = random(50, 100);
    px = 0;
    dx = random(2, 4);
    py = random(0, height-tam);
    colorCuadrado = color(random(255), random(255), random(255), 200);
  }
  void dibujar() {
    noStroke();
    fill(colorCuadrado);
    rect(px, py, tam, tam);
  }
  void mover() {
    if (px>width) {
      reiniciar(); /* esto NO es una función. Es un método aplicado dentro de otro método */
    }
    px += dx;
  }
  void reiniciar() {
    tam = random(50, 100);
    dx = random(2, 4);
    px = -tam;
    py = random(0, height-tam);
    colorCuadrado = color(random(255), random(255), random(255), 200);
  }
}
