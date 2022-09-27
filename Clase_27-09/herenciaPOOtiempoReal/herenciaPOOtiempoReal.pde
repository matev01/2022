Principal p;
void setup() {
  size(500, 500);
  p = new Principal();
}
void draw() {
  background(200);
  p.dibujar();
}
void mousePressed() {
  p.cambiarDir();
}
