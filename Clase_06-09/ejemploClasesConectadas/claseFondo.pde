class Fondo {
  PImage f;
  int miFondo; // el numero de imagen a mostrar
  //PImage [] fondos = new PImage [10];
  int fx;
  Fondo() {
    fx = -width;
    f = loadImage("fondo2.jpg");
    /*for (int i=0; i<fondos.length; i++) {
     fondos[i] = loadImage("misImages"+i+".jpg");
     }*/
  }
  void dibujarFondo() {
    // image(fondos[miFondo], 0,0);
    image(f, fx, 0);
    mover();
  }
  void mover() {
    fx = fx<0 ? fx : -width;
    fx ++;
  }
}
