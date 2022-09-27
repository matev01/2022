class Familia {
  Abuela a;
  Madre m;
  Hija h;
  Hija [] hs = new Hija[50];
  Familia() {
    a = new Abuela(width/2, height/2, 50);
    m = new Madre(200, 200, 120);
    h = new Hija(400, 383, 122);
    for (int i=0; i<hs.length; i++) {
      hs[i] = new Hija(random(width), random(height/2), random(20, 40));
    }
  }
  void dibujar() {
    a.dibujarAbuela();
    m.dibujarMadre();
    h.moverHija();
    h.dibujarHija();

    for (int i=0; i<hs.length; i++) {
      hs[i].moverHija();
      hs[i].dibujarHija();
    }
  }
}
