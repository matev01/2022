int pos;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  cuadrado();
  miCuadrado(pos, 300, 200);
  pos++;
  miCuadrado(50, 200, 80);
  miCuadrado(mouseX, 50, 80);
  for (int i=0; i<5; i++) {
    miCuadrado(i*100, 200, 100);
  }
  for (int i=0; i<10; i++) {
    if (i%2==0) { // módulo (%) devuelve el resto de una divisiòn
      rectangulo(i*50, 0, 50, height/2);
    }
  }
}
// con parámetros para ancho y alto
void rectangulo(int px, int py, int ancho, int alto) {
  line(px, py, px+ancho, py);
  line(px+ancho, py, px+ancho, py+alto);
  line(px+ancho, py+alto, px, py+alto);
  line(px, py+alto, px, py);
}

// dibuja cuadrados
void miCuadrado(int px, int py, int dimension ) { // con parámetros
  line(px, py, px+dimension, py);
  line(px+dimension, py, px+dimension, py+dimension);
  line(px+dimension, py+dimension, px, py+dimension);
  line(px, py+dimension, px, py);
}
void cuadrado() { // funcion SIN parámetro
  line(100, 100, 200, 100);
  line(200, 100, 200, 200);
  line(200, 200, 100, 200);
  line(100, 200, 100, 100);
}
