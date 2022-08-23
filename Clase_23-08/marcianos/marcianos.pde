Nave nave1, nave2;
Arma arma;
Bala b;
void setup() {
  size(600, 600);
  nave1 = new Nave();
  nave2 = new Nave(300, 400, 100);
  arma = new Arma();
  b = new Bala();
}
void draw() {
  background(255);
  nave1.dibujar();
  nave2.dibujar();
  nave1.mover();
  nave2.mover();
  arma.dibujar();
  b.dibujar();
  b.mover();
  if (keyPressed) {
    arma.mover(keyCode);
  }
}
void keyPressed() {
  if (keyCode==' ') {
    b.disparar();
  }
}
