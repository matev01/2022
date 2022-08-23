class Caballo {
  int px, py;
  PImage [] horse;
  //PImage []  horse = new PImage[7];
  int mover;
  boolean seMueve;
  Caballo() {
    horse = new PImage[7];
    for (int i=0; i<7; i++) {
      horse[i] = loadImage("horse"+i+".png");
    }
    px = width/2;
    py = height/2;
    imageMode(CENTER);
    seMueve = false;
  }

  void dibujar() {
    if (seMueve) {
      if (frameCount%5==0) {
        mover ++;
        mover = mover%7;
      }
    }
    image(horse[mover], px, py); 
  }

  void mover(int teclaPresionada) {
    if (teclaPresionada == RIGHT) {
      px += 2;
      seMueve = true;
    }
    if (teclaPresionada == LEFT) {
      px -= 2;
      seMueve = true;
    }
  }

  void moverArriba() {
    py -= 20;
  }
  void moverAbajo() {
    py += 20;
  }
}
