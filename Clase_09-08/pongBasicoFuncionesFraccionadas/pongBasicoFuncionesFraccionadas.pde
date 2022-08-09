float bx, by, dx, dy;
float tam;
int ancho, alto;
int [] rx = new int[2];
int [] ry = new int[2];
void setup() {
  size(600, 600);
  tam = 40;
  bx = width/2;
  by = random(tam, height-tam);
  float dire = random(2);
  if (dire>1) {
    dx = 4;
  } else {
    dx = -4;
  }
  dy = random(3, 4);

  // variables de las raquetas
  ancho = 40;
  alto = 120;
  rx[0] = 50;
  ry[0] = height/2;
  rx [1] = width-ancho-50;
  ry[1] = height/2;
}
void draw() {
  background(0);
  raqueta(rx[0], ry[0], ancho, alto); // jugador}
  raqueta(rx[1], ry[1], ancho, alto);
  // raqueta del juego
  ry[1] = int(by-alto/2);
  if (by<tam/2 || by>height-tam/2) {
    dy *= -1;
  }
  ellipse(bx, by, tam, tam);
  bx += dx;
  by += dy;
  if (keyPressed) {
    if (keyCode==UP && ry[0]>0) {
      ry[0] -= 5;
    }
    if (keyCode==DOWN && ry[0]<height-alto) {
      ry[0] += 5;
    }
  }
  for (int i=0; i<2; i++) {
    if (reboteLateral(bx, tam, rx[i], ancho) && 
      zonaAltura(by, tam, ry[i], alto )) {
      //if (rebote(bx, by, tam, rx[i], ry[i], ancho, alto)) {
      // if (rebote(bx, by, tam, rx[0], ry[0], ancho, alto )|| rebote(bx, by, tam, rx[1], ry[1], ancho, alto )) {
      dx*= -1;
    }
  }
}
/*Fraccionamos en dos funciones la funcion rebote, separando en dos funciones el control de rebote lateral en cada raqueda
de la altura donde el rebote es posible*/

boolean reboteLateral(float bx, float diam, int rx, int ancho) {
  boolean rebota = bx-diam/2<rx+ancho && bx+diam/2>rx;
  return rebota;
}
boolean zonaAltura(float by, float diam, int ry, int altura ) {
  boolean rebota = by+diam/2>ry && by-diam/2<ry+altura;
  return rebota;
}
boolean rebote(float bx, float by, float diam, int rx, int ry, int ancho, int alto ) { // no està en uso ahora
  boolean toca = bx-diam/2 <rx+ancho && bx>rx && by>ry && by<ry+alto || 
    bx+diam/2 >rx &&  bx<rx+ancho && by>ry && by<ry+alto; 
  return toca;
}

void raqueta(int x, int y, int ancho, int alto) {
  rect(x, y, ancho, alto);
}

void keyPressed() {

  if (keyCode==' ') {
    bx = width/2;
    by = random(tam, height-tam);
    float dire = random(2);
    if (dire>1) {
      dx = 4;
    } else {
      dx = -4;
    }
    dy = random(3, 4);
  }
}
