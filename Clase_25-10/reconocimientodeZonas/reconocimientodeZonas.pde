Ambiente a;
void setup() {
  size(640, 480);
  a= new Ambiente();
}
void draw() {
  background(200);
  a.display();
}
void keyPressed() {
  a.moverPersonaje(keyCode);
}
