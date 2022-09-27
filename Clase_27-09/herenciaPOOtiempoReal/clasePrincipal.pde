class Principal { /*Esta clase llama a Rect y Circulo, que adquieren el comportamiento
 de la super Clase Moving*/
  Rect r;
  Circulo c;
  Circulo [] cs = new Circulo[200];
  boolean dir;
  Principal() {
    r = new Rect(random(width), random(height), dir); // asignamos valores a los parámetros
    c = new Circulo(random(width), random(height), !dir);
    for (int i=0; i<cs.length; i++) {
      cs[i] = new Circulo(random(width), random(height/2), !dir);
    }
  }
  void dibujar() {
    r.dibujar(!dir);
    c.dibujar(!dir);
    for (int i=0; i<cs.length; i++) {
      cs[i].dibujar(dir);
    }
  }
  void cambiarDir() {
    dir = !dir;
  }
}
