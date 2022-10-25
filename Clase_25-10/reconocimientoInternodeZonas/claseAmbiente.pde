class Ambiente { // clase principal que controla al resto

  Tipito t;

  Vallas [] vs = new Vallas[4]; // arreglo de la clase Vallas 

  Ambiente() {
    t = new Tipito(50, height/2, 60);
    textSize(30);

    for (int i=0; i<vs.length; i++) {
      vs[i] = new Vallas(120+i*160, random(130, height-80), random(70, 90), random(130, 180));
    }
  }
  void display() {
    for (int i=0; i<vs.length; i++) {
      vs[i].dibujarVallas();
      if (dentroZona(t.px, t.py, t.tam, vs[i].x, vs[i].y, vs[i].ancho, vs[i].alto)) {
        text("esta dentro", 300, 50);
      }
    }
    t.dibujarTipito();
  }

  //-- reconocer que está completo dentro de una zona rectangular --//
  boolean dentroZona(int px, int py, int tam, float x, float y, float ancho, float alto ) {
    return px>x && px+tam<x+ancho && py>y && py+tam*2<y+alto;
  }

  void moverPersonaje(int tec) {
    t.mover(tec);
  }
}
