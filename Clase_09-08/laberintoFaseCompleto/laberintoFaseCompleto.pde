int cant = 5;
int tam;
int sep = 3;
boolean [][] arriba = new boolean[cant][cant];
boolean [][] abajo = new boolean[cant][cant];
boolean [][] derecha = new boolean[cant][cant];
boolean [][] izquierda = new boolean[cant][cant];
boolean [][] frutilla = new boolean[cant][cant];
int numero = 1; // numero del laberinto a mostrar
int contadorFruta;
int px, py;
void setup() {
  size(600, 600);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      arriba[i][j] = false;
      abajo[i][j] = false;
      derecha[i][j] = false;
      izquierda[i][j] = false;
      float ubicaFruta = random(2);
      if (ubicaFruta>1 && i+j !=0) {
        frutilla[i][j] = true;
        contadorFruta++;
      }
    }
  }
}
void draw() {
  background(0);
  laberintos(numero);
  textSize(30);
  fill(255);
  text(contadorFruta, 400, 50);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      stroke(0, 255, 0);
      strokeWeight(3);
      // rect(i*tam, j*tam, tam, tam);
      if (arriba[i][j]) {
        line(i*tam+sep, j*tam+sep, i*tam+tam-sep, j*tam+sep);
      }
      if (abajo[i][j]) {
        line(i*tam+sep, j*tam+tam-sep, i*tam+tam-sep, j*tam+tam-sep);
      }
      if (derecha[i][j]) {
        line(i*tam+tam-sep, j*tam+sep, i*tam+tam-sep, j*tam+tam-sep);
      }
      if (izquierda[i][j]) {
        line(i*tam+sep, j*tam+sep, i*tam+sep, j*tam+tam-sep);
      }
      if (frutilla[i][j]) {
        fruta(i*tam+tam/2, j*tam+tam/2, tam/4);
      }
      if (frutilla[px][py]) {
        frutilla[px][py] = false;
        contadorFruta--;
      }
    }
    if (contadorFruta<1) {
      reiniciarLaberinto();
    }
  }
  fill(255, 255, 0);
  noStroke();
  ellipse(px*tam+tam/2, py*tam+tam/2, tam/2, tam/2);
  println("px: "+px + " y py: "+py);
}
void reiniciarLaberinto() {

  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      arriba[i][j] = false;
      abajo[i][j] = false;
      derecha[i][j] = false;
      izquierda[i][j] = false;
      float ubicaFruta = random(2);
      if (ubicaFruta>1 && i+j !=0) {
        frutilla[i][j] = true;
        contadorFruta++;
      }
    }
  }
  numero++;
  px = 0;
  py = 0;
}
void keyPressed() {
  if (keyCode== RIGHT && derecha[px][py]==false) {
    px++;
  }
  if (keyCode== LEFT && !izquierda[px][py]) {
    px--;
  }
  if (keyCode== UP && !arriba[px][py]) {
    py--;
  }
  if (keyCode== DOWN && !abajo[px][py]) {
    py++;
  }
}
void fruta(int x, int y, int tam) {
  noStroke();
  fill(255, 0, 0);
  ellipse(x, y, tam, tam);
}
/*void laberinto() {
 for (int i=0; i<cant; i++) {
 arriba[i][0] = true;
 abajo[i][4] = true;
 derecha[4][i] = true;
 izquierda[0][i] = true;
 }
 }*/
