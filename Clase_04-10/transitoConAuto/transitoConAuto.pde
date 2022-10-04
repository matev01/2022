Transito t;
void setup() {
  size(640, 480);
  t = new Transito();
}
void draw() {
  background(200);
  t.dibujar();
  t.chocar();
  if (keyPressed) {
    t.moverAuto(keyCode);
  }
}
