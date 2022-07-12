int posX;
void setup() {
  size(600, 400);
}
void draw() {
  background(255);
  posX++;
  posX = posX%width;
  auto(posX, 100, 100, 50, color(255, 0, 0));
  autoVeloz(posX, 200, 100, 50, color(255, 0, 0), 4);
  auto(300, mouseY, 200, 80, color(255, 255, 0));
}
void auto(int px, int py, int ancho, int alto, color relleno ) {
  fill(relleno);
  rect(px, py, ancho, alto);
  rueda(px, py+alto, alto/2, 1);
  rueda(px+ancho, py+alto, alto/2, 1);
}


void autoVeloz(int px, int py, int ancho, int alto, color relleno, float vel ) {
  fill(relleno);
  rect(px, py, ancho, alto);
  rueda(px, py+alto, alto/2, vel);
  rueda(px+ancho, py+alto, alto/2, vel);
}
void rueda(int px, int py, int tam, float vel) {
  push();
  translate(px, py);
  rotate(radians(frameCount*vel));
  fill(200);
  ellipse(0, 0, tam, tam);
  line(-tam/2, 0, tam/2, 0);
  line(0, -tam/2, 0, tam/2);
  fill(250);
  ellipse(0, 0, tam/2, tam/2);
  pop();
}
