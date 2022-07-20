color relleno;
int cant = 100;
int tam = 50;
float [] x = new float[cant];
float [] y = new float[cant];
float [] dirx = new float[cant];
float [] diry = new float[cant];
boolean []seMueve = new boolean[cant];
void setup() {
  size(600, 600);
  relleno = color(0, 0, 255);
  for (int i=0; i<cant; i++) {
    x[i] = width/2;
    y[i] = height/2;
    dirx[i] = random(-3, 3);
    diry[i] = random(-3, 3);
    seMueve[i] = true;
  }
}
void draw() {
  background(255);
  fill(relleno);
  rect(200, 100, 200, 100);

  for (int i=0; i<cant; i++) {
    if (enZona(200, 100, 200, 100, x[i], y[i], tam)) {
      seMueve[i] = false;
    }

    if (x[i]>width-tam/2 || x[i]<tam/2) {
      dirx[i] = dirx[i]*-1;
    }
    if (y[i]>height-tam/2 || y[i]<tam/2) {
      diry[i] = diry[i]*-1;
    }
    if (seMueve[i]) { // determina si se mueven y si se dibujan
      x[i] += dirx[i];
      y[i] += diry[i];
      fill(255, 255, 0);
      ellipse(x[i], y[i], tam, tam);
    }
  }

  println(estoySobre(200, 100, 200, 100));
}

boolean enZona(int px, int py, int ancho, int alto, float bx, float by, int tam) {
  boolean entrando = bx>px+tam/2 && bx<px+ancho-tam/2 && by>py+tam/2 && by<py+alto-tam/2;
  return entrando;
}

boolean estoySobre(int px, int py, int ancho, int alto) {
  return mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto;
}

void mousePressed() {
  if (estoySobre(200, 100, 200, 100)) {
    relleno = color(0, 0, 0);
  }
}
