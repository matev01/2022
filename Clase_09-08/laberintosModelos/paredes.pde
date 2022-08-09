void mousePressed() {
  cambiarLaberinto();
  numeroLab++;
  numeroLab = numeroLab%4;
}
void laberinto(int numero) {
  if (numero==1) {
    maze1();
  } else if (numero==2 ) {
    maze2();
  } else if (numero==3 ) {
    maze3();
  } else {
    maze0();
  }
}

void maze1() {
  for (int i=0; i<cant; i++) {
    arriba[i][0] = true; // borde superior
    abajo[i][4] = true; // borde inferior
    izquierda[0][i] = true; // borde izquierdo
    derecha[4][i] = true; // borde derecho
  }
  for (int i=0; i<cant-1; i++) {
    arriba[i][1] = true;
    abajo[i][0] = true;
    arriba[i][3] = true;
    abajo[i][2] = true;
  }
  for (int i=1; i<cant; i++) {
    arriba[i][2] = true;
    abajo[i][1] = true;
    arriba[i][4] = true;
    abajo[i][3] = true;
  }
}
void maze2() {
  for (int i=0; i<cant; i++) {
    arriba[i][0] = true; // borde superior
    abajo[i][4] = true; // borde inferior
    izquierda[0][i] = true; // borde izquierdo
    derecha[4][i] = true; // borde derecho
  }
  for (int i=0; i<cant-1; i++) {
    arriba[i][2] = true;
    abajo[i][1] = true;
  }
  derecha[0][1] = true;
  izquierda[1][1] = true;
  derecha[2][1] = true;
  izquierda[3][1] = true;

  derecha[1][0] = true;
  izquierda[2][0] = true;
  derecha[3][0] = true;
  izquierda[4][0] = true;
  derecha[1][2] = true;
  izquierda[2][2] = true;
  derecha[0][3] = true;
  izquierda[1][3] = true;
  derecha[2][3] = true;
  izquierda[3][3] = true;
  derecha[3][4] = true;
  izquierda[4][4] = true;

  arriba[1][4] = true;
  abajo[1][3] = true;
  arriba[2][4] = true;
  abajo[2][3] = true;

  arriba[3][3] = true;
  abajo[3][2] = true;
  arriba[4][3] = true;
  abajo[4][2] = true;
}
void maze3() {
  for (int i=0; i<cant; i++) {
    arriba[i][0] = true; // borde superior
    abajo[i][4] = true; // borde inferior
    izquierda[0][i] = true; // borde izquierdo
    derecha[4][i] = true; // borde derecho
  }
  derecha[0][0] = true;
  izquierda[1][0] = true;
  derecha[0][1] = true;
  izquierda[1][1] = true;

  derecha[1][1] = true;
  izquierda[2][1] = true;
  derecha[1][2] = true;
  izquierda[2][2] = true;
  derecha[2][0] = true;
  izquierda[3][0] = true;
  derecha[3][1] = true;
  izquierda[4][1] = true;

  derecha[2][2] = true;
  izquierda[3][2] = true;
  derecha[3][3] = true;
  izquierda[4][3] = true;
  derecha[2][4] = true;
  izquierda[3][4] = true;

  // horizontales
  arriba[0][3] = true;
  abajo[0][2] = true;
  arriba[1][4] = true;
  abajo[1][3] = true;
  arriba[2][3] = true;
  abajo[2][2] = true;
  arriba[3][2] = true;
  abajo[3][1] = true;
  arriba[4][3] = true;
  abajo[4][2] = true;
}
void maze0() {
  for (int i=0; i<cant; i++) {
    arriba[i][0] = true; // borde superior
    abajo[i][4] = true; // borde inferior
    izquierda[0][i] = true; // borde izquierdo
    derecha[4][i] = true; // borde derecho

    if (i<cant-1) { // hueco en el último bloque
      arriba[i][1] = true;
      abajo[i][0] = true;
    } else if (i>=1) { // hueco el primer bloque
      arriba[i][2] = true;
      abajo[i][1] = true;
    }
  }
  derecha[0][2] = true;
  derecha[0][3] = true;
  derecha[1][1] = true;
  izquierda[2][1] = true;

  izquierda[1][2] = true;
  izquierda[1][3] = true;

  derecha[2][2] = true;
  derecha[2][3] = true;
  izquierda[3][2] = true;
  izquierda[3][3] = true;

  derecha[1][3] = true;
  derecha[1][4] = true;
  izquierda[2][3] = true;
  izquierda[2][4] = true;

  derecha[3][3] = true;
  derecha[3][4] = true;
  izquierda[4][3] = true;
  izquierda[4][4] = true;
}
void laberinto() {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      arriba[i][j] = true;
      abajo[i][j] = true;
      izquierda[i][j] = true;
      derecha[i][j] = true;
    }
  }
  text ("META", 30, 390);
  textSize (20);

  derecha[0][0] = false;
  izquierda[1][0] = false;
  derecha[1][1] = false;
  izquierda[2][1] = false;

  arriba[1][1] = false;
  abajo[1][0] = false;

  abajo[3][0] = false;
  arriba[3][1] = false;
  izquierda[3][1] = false;
  derecha[2][1] = false;

  izquierda[1][2] = true;
  izquierda[1][3] = true;

  derecha[2][2] = true;
  derecha[2][3] = true;
  izquierda[3][2] = true;
  izquierda[3][3] = true;

  derecha[3][0] = false;
  izquierda[4][0] = false;

  abajo[4][0] = false;
  arriba[4][1] = false;

  abajo[4][1] = false;
  arriba[4][2] = false;

  abajo[4][2] = false;
  arriba[4][3] = false;

  derecha[3][3] = false;
  izquierda[4][3] = false;

  derecha[2][3] = false;
  izquierda[3][3] = false;

  abajo[2][2] = false;
  arriba[2][3] = false;

  derecha[1][2] = false;
  izquierda[2][2] = false;

  abajo[1][2] = false;
  arriba[1][3] = false;

  arriba[1][4] = false;
  abajo[1][3] = false;

  derecha[0][4] = false;
  izquierda[1][4] = false;

  arriba[0][4] = false;
  abajo[0][3] = false;

  izquierda[0][3] = false;
}
