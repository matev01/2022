class Principal {
  Fondo fondito;
  Auto a;
  Principal() {
    fondito = new Fondo();
    a = new Auto(400, 400, 100, 50);
  }
  void display() {
    //fondito.dibujarFondo(3); // enviamos por parámetro que fondo mostrar
    fondito.dibujarFondo();
    a.dibujarAuto();
  }
  void mueveAuto(int presionada) {
    a.moverAuto(presionada);
    /*if (presionada==DOWN) {
      a.ay += 30; // CON EL . ACCEDO A LA PROPIEDAD ay
    }*/
  }
}
