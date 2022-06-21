int cant = 10;
int tam;
void setup() {
  size(600, 600);
  tam = width/cant;
}
void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      if (sobreCelda(i*tam, j*tam, tam, tam)) {
        fill(0);
      } else {
        fill(255);
      }
      rect(i*tam, j*tam, tam, tam);
    }
  }
}
boolean sobreCelda(int px, int py, int ancho, int alto) {
  return mouseX>px&&mouseX<px+ancho && mouseY>py && mouseY<py+alto;
}
