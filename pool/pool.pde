/*Este programa recrea un juego de pool con 6 troneras que detectan cuando
la bola entra en alguna de ellas*/

float px, py, dx, dy; // variables de la bola
int tam = 50;
int []x = new int[6]; // ubicación en X de las troneras
int []y = new int[6]; // ubicaciòn en Y
int puntos;

void setup() {
  size(600, 800);
  px = width/2;
  py = height/2;
  dx = random(-3, 3);
  dy = random(-3, 3);
  // valor de ubicaciòn
  for (int i=0; i<6; i++) { 
    if (i%2==0) {
      x[i] = 0;
    } else {
      x[i] = width;
    }
  }
  y[0] = 0;
  y[1] = 0;
  y[2] = height/2;
  y[3] = height/2;
  y[4] = height;
  y[5] = height;
}
void draw() {
  background(0, 150, 0);
  textSize(40);
  text(puntos, 50, 50);
  for (int i=0; i<6; i++) {
    //emboca(int px, int py, int tamBuchaca, float bx, float by, int tamBola) 
    if (emboca(x[i], y[i], 100, px, py, tam)) {
      puntos++;
      px = width/2;
      py = height/2;
      dx = random(-3, 3);
      dy = random(-3, 3);
      background(255, 255, 0);
    }
    fill(0);
    ellipse(x[i], y[i], 100, 100);
  }
  if (px>width-tam/2 || px<tam/2) {
    dx = dx*-1;
  }
  if (py>height-tam/2 || py<tam/2) {
    dy = dy*-1;
  }
  fill(255, 0, 0);
  ellipse(px, py, tam, tam);
  px += dx;
  py += dy;
}
/*funciòn para utilizar la posiciòn de las troneras y de la bola a fin de detectar
si entró en alguna de ellas*/
boolean emboca(int px, int py, int tamBuchaca, float bx, float by, int tamBola) {
  float distancia = dist(px, py, bx, by);
  boolean entroBola = distancia<tamBuchaca/2;
  return entroBola;
}
void mousePressed() {
  px = width/2;
  py = height/2;
  dx = random(-3, 3);
  dy = random(-3, 3);
}
