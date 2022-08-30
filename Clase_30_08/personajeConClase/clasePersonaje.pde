class Caballo {
  int px, py;
  PImage [] horseD;
  PImage [] horseI;

  int mover;
  boolean derecha;
  Caballo() {
    horseD = new PImage[7];
    horseI = new PImage[7];
    for (int i=0; i<7; i++) {
      horseD[i] = loadImage("horse"+i+".png");
      horseD[i].resize(100, 75);
      horseI[i] = loadImage("Ihorse"+i+".png");
      horseI[i].resize(100, 75);
    }
    px = width/2;
    py = height/2;
    imageMode(CENTER);
    derecha = true;
  }

  void dibujar() {
    if (derecha) {
      image(horseD[mover], px, py);
    } else {
      image(horseI[mover], px, py);
    }
  }

  void mover(int teclaPresionada) {
    if (frameCount%6==0) {
      if (teclaPresionada == RIGHT) {
        px += 5;
        derecha = true;
      }
      if (teclaPresionada == LEFT) {
        px -= 5;
        derecha = false;
      }
      
      mover++;
      mover = mover%7;
    }
  }

  void moverArriba() {
    py -= 20;
  }
  void moverAbajo() {
    py += 20;
  }
}
