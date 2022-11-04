class Main {
  Laberinto l;
  Personaje p;
  Main() {
    l = new Laberinto(40);
    p = new Personaje(2, 2, width/40); 
    /* el tamaño del personaje debe estar relacionado con las celdas */
  }
  void dibujar() {
    l.dibujaLaberinto();
    p.dibujaPersonaje();
  }

  void moverPersonaje(int tecla) {

    if (tecla==RIGHT && l.pared[p.px+1][p.py]) {
      p.moverDer();
    }
    if (tecla==LEFT && l.pared[p.px-1][p.py]) {
      p.moverIzq();
    }
    if (tecla==UP && l.pared[p.px][p.py-1]) {
      p.moverArriba();
    }
    if (tecla==DOWN && l.pared[p.px][p.py+1]) {
      p.moverAbajo();
    }
  }
}
