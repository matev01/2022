int cant = 10;
int tam;
boolean [][] celda = new boolean [cant][cant];
void setup() {
  size(600, 600);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      celda[i][j] = false;
    }
  }
}
void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (sobreCelda(i*tam, j*tam, tam, tam)) {
        celda[i][j] = true; // cambia el estado de la celda
      }
      if (celda[i][j]== true) {
        fill(0);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}

void keyPressed() {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      celda[i][j] = false;
    }
  }
}
boolean sobreCelda(int px, int py, int ancho, int alto) {
  return mouseX>px&&mouseX<px+ancho && mouseY>py && mouseY<py+alto;
}
