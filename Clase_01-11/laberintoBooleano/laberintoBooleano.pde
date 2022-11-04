/*En este ejemplo de laberinto utilizamos celdas booleanas (en arreglos) para definir zonas transitables
por un personaje*/

Main m;
void setup() {
  size(600, 600);
  m = new Main();
}
void draw() {
  background(200);
  m.dibujar();
}
void keyPressed() {
  m.moverPersonaje(keyCode);
}
