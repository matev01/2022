class Principal { /*Esta clase llama a Rect y Circulo, que adquieren el comportamiento
de la super Clase Moving*/
  Rect r;
  Circulo c;
  boolean dir;
  Principal() {
    r = new Rect(random(width), random(height), dir); // asignamos valores a los parámetros
    c = new Circulo(random(width), random(height), !dir);
  }
  void dibujar() {
    r.dibujar();
    c.dibujar();
  }
}
