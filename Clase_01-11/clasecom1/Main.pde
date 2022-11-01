class Main {
  Estado e;
  Juego juego;
  Main() {
    e = new Estado(0, "Setup");
    juego = new Juego();
  }
  void mousePressed() {
    e.sumarEstado();
  }
  void keyPressed() {
    e.reiniciarEstado();
  }  

  void dibujar() {
    if (e.estadoID > 2) {
      juego.dibujar();
    } else {
      background(0);
    }
  }
}
