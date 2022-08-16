/*Este ejemplo contiene tres instancias (tres aplicaciones) de la clase Cuadrado
 Cada una se genera con velocidades, ubicaciones y color aleatorio. Al salir de la ventana
 vuelven a reingresar tomando nuevos valores*/
/*Prueben creando un Constructor c/ paràmetros para tener una instancia con valores
 definidos*/
Cuadrado c1, c2, c3;
void setup() {
  size(600, 600);
  c1 = new Cuadrado();
  c2 = new Cuadrado();
  c3 = new Cuadrado();
  background(0);
}
void draw() {

  c1.dibujar();
  c2.dibujar();
  c3.dibujar();
  c1.mover();
  c2.mover();
  c3.mover();
  fill(0, 20);
  rect(0, 0, width, height);
}
