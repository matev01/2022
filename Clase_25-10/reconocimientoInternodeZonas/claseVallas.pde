class Vallas {
  float x, y, ancho, alto;
  Vallas(float x, float y, float ancho, float altor) {
    this.x = x;
    this.y = y;
    this.ancho = ancho;
    alto = altor;
  }
  void dibujarVallas() {
    fill(100);
    rect(x, y, ancho, alto);
  }
} 
