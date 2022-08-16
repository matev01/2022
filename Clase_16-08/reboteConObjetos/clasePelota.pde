class Pelota {
  float px, py, dx, dy; // declaro las propiedades de la clase
  int tam;
  color relleno;
  Pelota() { // constructor de la clase
    tam = 50;
    px = width/2;
    py = height/2;
    dx = random(-5, 5);
    dy = random(-5, 5);
    relleno = color(0, 255, 255);
  }
  void dibujar() {
    fill(relleno);
    ellipse(px, py, tam, tam);
  }
  void mover() {
    if (px>width-tam/2 || px<tam/2) {
      dx *= -1;
    }
    if (py>height-tam/2 || py<tam/2) {
      dy *= -1;
    }
    px += dx;
    py += dy;
  }
  void reiniciar() {
    px = width/2;
    py = height/2;
    dx = random(-5, 5);
    dy = random(-5, 5);
  }
}
