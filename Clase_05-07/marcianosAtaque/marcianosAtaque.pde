int cant = 5;
float [][] pos = new float[cant][2];
float [] tam = new float[cant];
float [] dir = new float[cant];
float bx, by; // ubicacion del proyectil
boolean disparada;
void setup() {
  size(800, 600);
  for (int i=0; i<cant; i++) {
    tam[i] = random(40, 60);
    dir[i] = random(1, 3);
    pos[i][0] = random(-200, -100);
    pos[i][1] = random(tam[i]/2, height/2);
  }
  bx = width/2;
  by = height-50;
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    // marciano(int px, int py, int tam) << parametros a reemplazar
    marciano(pos[i][0], pos[i][1], tam[i]);
    if (pos[i][0]>width+tam[i]) {
      tam[i] = random(40, 60);
      dir[i] = random(1, 3);
      pos[i][0] = random(-200, -100);
      pos[i][1] = random(tam[i]/2, height/2);
    }
    pos[i][0] += dir[i];
    if (derribar(bx, by, pos[i][0], pos[i][1], tam[i])) {
      background(255, 0, 0);
      disparada = false;
      pos[i][0] = random(-200, -100);
      pos[i][1] = random(tam[i]/2, height/2);
    }
  }
  fill(255, 255, 0);
  ellipse(bx, by, 10, 20);
  if (disparada && by> 0) {
    by -= 10;
  } else {
    bx = mouseX;
    by = height-50;
    disparada = false;
  }
}
boolean derribar(float bx, float by, float nx, float ny, float tam) {
  float distan = dist(bx, by, nx, ny);
  return distan <tam;
}
void mousePressed() {
  disparada = true;
}
void marciano(float px, float py, float tam) {
  fill(40, 200, 200, 100);
  ellipse(px, py, tam, tam);
  fill(0, 200, 0);
  ellipse(px, py, tam/2, tam);
  fill(100);
  triangle(px-tam, py, px+tam, py, px, py+tam);
}
