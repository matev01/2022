float px, py, dx, dy;
int tam;
void setup() {
  size(500, 500);
  tam = 50;
  px = width/2;
  py = height/2;
  dx = random(-5, 5);
  dy = random(-5, 5);
}
void draw() {
  background(0);
  if (px>width-tam/2 || px<tam/2) {
    dx *= -1;
  }
  if (py>height-tam/2 || py<tam/2) {
    dy *= -1;
  }
  ellipse(px, py, tam, tam);
  px += dx;
  py += dy;
}
void mousePressed() {
  px = width/2;
  py = height/2;
  dx = random(-5, 5);
  dy = random(-5, 5);
}
