class Auto {
  float ax, ay;
  int ancho, alto;
  Rueda r;
  Auto(float ax, float ay, int ancho, int alto ) {
    this.ax = ax;
    this.ay = ay;
    this.ancho = ancho;
    this.alto = alto;
    r = new Rueda();
  }
  void dibujarAuto() {
    fill(255, 255, 0);
    triangle(ax, ay, ax+ancho, ay, ax+ancho/2, ay-alto/2);
    fill(200, 130, 20);
    rect(ax, ay, ancho, alto);
    r.dibujarRueda(ax, ay+alto, alto );
    r.dibujarRueda(ax+ancho, ay+alto, alto);
  }
  void moverAuto(int tecla) {
    if (tecla==UP) {
      ay -= 30;
      //ay = ay -30;
    }
    if (tecla == DOWN) {
      ay += 30;
    }
  }
}
