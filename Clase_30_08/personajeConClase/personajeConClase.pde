Caballo c;
void setup() {
  size(640, 480);
  c = new Caballo();
}
void draw() {
  background(255);
  c.dibujar();
  if (keyPressed) {
    c.mover(keyCode);
  }
  println(keyCode);
}
void keyPressed() {
  if (key=='W' || key=='w') {
    c.moverArriba();
  }
  if (key=='S' || key=='s' ) {
    c.moverAbajo();
  }
}
