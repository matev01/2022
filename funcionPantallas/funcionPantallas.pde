
void setup() {
  size(500, 500);
}
void draw() {
  background(0);
  /*/Cada función aplicada puede tener valores independientes. Respetar el orden!!!*/
  pantalla("Pantalla 1", 200, 300, 40, color(0, 0, 255)); 
  pantalla("Pantalla 2", 100, 200, 60, color(255, 255, 0));
  pantalla("Pantalla 3", 200, 100, 30, color(255, 0, 0));
}
/*Le agregamos parámetros del texto a escribir, dónde ubicarlo, tamaño y color del texto*/
void pantalla(String texto, int px, int py, int tamText, color colorText) {
  fill(colorText);
  textSize(tamText);
  text(texto, px, py);
}
