int tam = 60;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  for (int i=0; i<10; i++) {
    float factor = map(i, 0, 10, 0.5, 5);
   // float factor = random(0.5, 5); otra versión
    rueda(tam/2+i*tam, 200, tam, factor);
  }
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
