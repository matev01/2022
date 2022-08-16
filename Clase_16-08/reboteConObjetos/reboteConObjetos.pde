Pelota ball1, ball2, ball3;
void setup() {
  size(640, 480);
  ball1 = new Pelota();
  ball2 = new Pelota();
  ball3 = new Pelota();
}
void draw() {
  background(0);
  ball1.dibujar();
  ball1.mover();
  ball2.dibujar();
  ball2.mover();
  ball3.dibujar();
  ball3.mover();
}
void mousePressed() {
  ball1.reiniciar();
  ball2.reiniciar();
  //ball3.reiniciar(); // no se ejecuta el método
}
