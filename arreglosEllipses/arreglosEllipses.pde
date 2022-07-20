/*Este programa dibuja 200 ellipses que se mueven y rebotan en los bordes
de la pantalla. Al presionar sobre alguna, esta se detiene*/
float px, py, dx, dy;
int cant = 200;
float [] x, y;
float [] dirx = new float[cant];
float [] diry = new float[cant];
boolean [] seMueve = new boolean[cant];

int tam = 50;
void setup() {
  size(600, 600);
  x = new float[cant];
  y = new float[cant];
  for (int i=0; i<cant; i++) {
    x[i] = width/2;
    y[i] = width/2;
    dirx[i] = random(-3, 3);
    diry[i] = random(-3, 3);
    seMueve[i] = true;
  }

  px = width/2;
  py = height/2;
  dx = random(-3, 3);
  dy = random(-3, 3);
}
void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    if (x[i]>width-tam/2 || x[i]<tam/2) {
      dirx[i] = dirx[i]*-1;
    }
    if (y[i]>height-tam/2 || y[i]<tam/2) {
      diry[i] = diry[i]*-1;
    }
    fill(255, 255, 0);
    ellipse(x[i], y[i], 50, 50);
    if (seMueve[i]) {
      x[i] += dirx[i];
      y[i] += diry[i];
    }
  }

  if (px>width-tam/2 || px<tam/2) {
    dx = dx*-1;
  }
  if (py>height-tam/2 || py<tam/2) {
    dy = dy*-1;
  }
  fill(255, 0, 0);
  ellipse(px, py, 50, 50);
  px += dx;
  py += dy;
}
// esta función evalúa si estamos sobre una figura circular
boolean presionoSobre(float x, float y, int diametro) {
  float distancia = dist(x, y, mouseX, mouseY);
  boolean estoyPresionando = distancia<diametro/2;
  return estoyPresionando;
}

void keyPressed() { // reiniciamos los valores del setup()
  for (int i=0; i<cant; i++) {
    x[i] = width/2;
    y[i] = width/2;
    dirx[i] = random(-3, 3);
    diry[i] = random(-3, 3);
  }
}
void mousePressed() { // al hacer click
  for (int i=0; i<cant; i++) {
    if (presionoSobre(x[i], y[i], tam)) { // evaluamos si estamos sobre una figura
      seMueve[i] = false;
    }
  }
}
