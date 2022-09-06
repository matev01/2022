Principal p;
void setup() {
  size(600, 600);
  p = new Principal();
}
void draw() {
  background(255);
  p.display();
}
void keyPressed() {
  p.mueveAuto(keyCode);
}
