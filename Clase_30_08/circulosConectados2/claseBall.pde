class Bola {
  float px, py, tam;
  float dx, dy;
  Bola() {
    px = random(width);
    py = random(height);
  }
  Bola(float px, float parampy) {
    this.px = px;
    py = parampy;
    tam = random(20, 40);
    dx = random(-2, 2);
    dy = random(-2, 2);
  }
  void dibujar() {
    noFill();
    stroke(0, 255, 0);
    //circle(px, py, tam);
  }
  void mover() {
    /*if (px>width) {
     px = 0;
     }*/
    px = px>width ? 0 : px;
    px = px<0 ? width : px;
    py = py>height ? 0 : py;
    py = py<0 ? height : py;

    px+= dx;
    py += dy;
  }
  void conectarOtra(Bola otra) {

    line(px, py, otra.px, otra.py);
  }

  void reiniciar() {
    tam = random(20, 40);
    dx = random(-2, 2);
    dy = random(-2, 2);
    px = width/2;
    py = height/2;
  }
}
