int cant = 10; // variable para la cantidad
int tam; // tamaño
int i;
void setup() {
  size(500, 500);
  tam = width/cant; // ancho pantalla dividido cantidad
}
void draw() {
  background(255);

  for (int i=0; i<width; i+=tam) {
    rect(i, 250, tam, tam);
  }
  if (mouseX>width/2) {
    for (int i=0; i<cant; i++) {
      if (i>5) {
        rect(i*tam, 0, tam, tam);
      }
    }
  }
}
