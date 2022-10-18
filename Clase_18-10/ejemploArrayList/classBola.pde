class Ball {
  float x, y, d; // ubicación y tamaño
  float dx, dy; // dirección eje X y eje Y
  color relleno;
  Ball(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
    dx = random(-2, 2);
    dy = random(-3, 3);
    relleno = color(0, 255, 0);
  }
  Ball(color relleno) {
    this.relleno = relleno;
    x = width/2;
    y = height/2;
    d = 20;
    dx = random(-2, 2);
    dy = random(-3, 3);
  }
  void dibujar() {
    fill(relleno);
    circle(x, y, d);
  }
  void mover() {
    if (x>width-d/2 || x<d/2) {
      dx *= -1;
    }
    y = y<0 ? height: y;
    x += dx;
    y += dy;
  }
  boolean seSale() {
    return y>height;
  }
}
