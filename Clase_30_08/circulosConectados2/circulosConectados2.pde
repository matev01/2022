int cant = 20;
Bola [] balls = new Bola[cant];
void setup() {
  size(500, 500);

  for (int i=0; i<cant; i++) {
    balls[i] = new Bola(width/2, random(height));
  }
  background(0);
}
void draw() {


  for (int i=0; i<cant; i++) {
    balls[i].dibujar();
    balls[i].mover();
  }
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      balls[i].conectarOtra(balls[j]);
    }
  }
  fill(0, 5);
  rect(0, 0, width, height);
}
void mousePressed() {
  for (int i=0; i<cant; i++) {
    balls[i].reiniciar();
  }
}
