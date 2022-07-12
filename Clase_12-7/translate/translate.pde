int pos;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  rect(0, 0, 100, 100);
  push(); // aisla, recorta todo lo que está dentro
  rectMode(CENTER);
  translate(200, 200); // UBICACION
  rotate(radians(frameCount)); // sirve para rotar figuras
  rect(0, 0, 100, 100); // GIRA SOBRE SU EJE
  rect(100, 0, 50, 50); // Gira a 100 px del centro

  pop(); // hasta acá
}
