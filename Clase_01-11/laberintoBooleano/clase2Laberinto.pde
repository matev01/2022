class Laberinto {
  int cant, ancho, alto;
  boolean [][] pared;
  Laberinto(int cant) {
    this.cant = cant;
    ancho = width/cant;
    alto = height/cant;
    pared = new boolean [cant][cant];
    for (int i=2; i<cant-2; i++) {
      pared[i][2] = true;
      pared[i][3] = true;
      pared[i][19] = true;
      pared[i][20] = true;
      pared[i][37] = true;
      pared[i][38] = true;
    }
    for (int j=2; j<cant-2; j++) {
      pared[2][j] = true;
      pared[3][j] = true;
      pared[36][j] = true;
      pared[37][j] = true;
    }
    for (int j=cant/2; j<cant-2; j++) {
      pared[10][j] = true;
      pared[11][j] = true;
    }
    for (int j=2; j<cant/2; j++) {
      pared[20][j] = true;
      pared[21][j] = true;
    }
  }
  void dibujaLaberinto() {

    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        noStroke();
        if (pared[i][j]) {
          fill(100);
        } else {
          fill(200);
        }
        rect(i*ancho, j*alto, ancho, alto);
      }
    }
  }
}
