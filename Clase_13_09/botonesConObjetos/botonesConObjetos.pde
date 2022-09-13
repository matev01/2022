Programa p;
void setup() {
  size(640, 480);
  p = new Programa();
}
void draw() {
  background(200);
  p.dibujar();
}
void mousePressed() {
  p.accionarBotones();
}
