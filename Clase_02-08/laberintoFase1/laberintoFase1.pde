int cant = 5;
int tam;
int sep = 3;
boolean [][] arriba = new boolean[cant][cant];
boolean [][] abajo = new boolean[cant][cant];
boolean [][] derecha = new boolean[cant][cant];
boolean [][] izquierda = new boolean[cant][cant];
void setup() {
  size(600, 600);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      arriba[i][j] = false;
      abajo[i][j] = false;
      derecha[i][j] = false;
      izquierda[i][j] = false;
    }
  }
}
void draw() {
  background(0);
  laberinto();

  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      stroke(0, 255, 0);
      strokeWeight(3);
      // rect(i*tam, j*tam, tam, tam);
      if (arriba[i][j]) {
        line(i*tam+sep, j*tam+sep, i*tam+tam-sep, j*tam+sep);
      }
      if (abajo[i][j]) {
        line(i*tam+sep, j*tam+tam-sep, i*tam+tam-sep, j*tam+tam-sep);
      }
      if (derecha[i][j]) {
        line(i*tam+tam-sep, j*tam+sep, i*tam+tam-sep, j*tam+tam-sep);
      }
      if (izquierda[i][j]) {
        line(i*tam+sep, j*tam+sep, i*tam+sep, j*tam+tam-sep);
      }
    }
  }
}
void laberinto() {
  for (int i=0; i<cant; i++) {
    arriba[i][0] = true;
    abajo[i][4] = true;
    derecha[4][i] = true;
    izquierda[0][i] = true;
  }
}
