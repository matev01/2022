class Ambiente { // clase principal que controla al resto
  Tipito t;
  Vallas [] vs = new Vallas[4]; // arreglo de la clase Vallas 

  Ambiente() {
    t = new Tipito(50, height/2, 60);
    textSize(30);
    // si quisiera ubicar cada una en un punto preciso 
    /*v = new Vallas(100, 300, 70, 20); 
     vs[0] = new Vallas(150, 100, 100, 170);
     vs[1] = new Vallas(250, 100, 80, 150);
     vs[2] = new Vallas(350, 200, 80, 100);
     vs[3] = new Vallas(50, 400, 100, 170);*/
    for (int i=0; i<vs.length; i++) { // arreglo para construir las instancias
      vs[i] = new Vallas(120+i*160, random(130, height-80), random(70, 90), random(130, 180));
    }
  }
  void display() {
    for (int i=0; i<vs.length; i++) { // todo dentro del for
      vs[i].dibujarVallas();

      if (contacto(t.px, t.py, t.tam, vs[i].x, vs[i].y, vs[i].ancho, vs[i].alto)) {
        text("está tocando", 300, 50);
        if (t.px+t.tam>vs[i].x && t.px<vs[i].x+vs[i].ancho/2 ) {
          t.reboteDer();
        }
        if (t.px<vs[i].x+vs[i].ancho && t.px>vs[i].x ) {
          t.reboteIzq();
        }
      }
    }

    t.dibujarTipito();
    //text(keyCode, 50, 50);
    println(keyCode);
  }
  // --- reconocer contacto con cualquier lateral --//

  boolean contacto(int px, int py, int tam, float x, float y, float ancho, float alto ) {
    if (px+tam>x && px <x+ancho && py+tam*2>y && py<y+alto) {
      return true;
    } else {
      return false;
    }
  }

  void moverPersonaje(int tec) {
    t.mover(tec);
  }
}
