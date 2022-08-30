Juego game;
void setup() {
  size(800, 600);
  game = new Juego();
}
void draw() {
  background(0);
  game.dibujarJuego();

  if (keyPressed) {
    game.moverPersonaje(keyCode);
  }
}
void mousePressed() {
  game.disparar();
}
