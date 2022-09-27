/* Movimiento es una clase creada como cualquier otra, solo que contiene
un método de comportamiento, no de dibujo*/

class Movimiento { // superClase
  float x, y, dx, dy; // ubicación y dirección
  boolean vert;
  
  Movimiento(float x, float y, boolean vert) {
    this.vert = vert;
    this.x = x;
    this.y = y;
    dx = random(2, 4);
    dy = random(3, 5);
  }
  void mover(boolean vert) { // asignamos comportamientos a las propiedades x e y
    this.vert = vert;
    if (x>width) {
      x = 0;
      y = random(height);
    }
    if (y >height) {
      y=0;
      x = random(width);
    }
    if (vert) {
      x += dx;
    } else {
      y += dy;
    }
  }
}
