void setup() {
  size(600, 400);                                                                
  config();
}
void draw() {
  background(250);
  for (int i=0; i<width; i+= 1) {
    int borde = i*255/width; 
    /* regla de tres simple para promediar la ubicación de cada línea (i) con
     un valor equivalente de color*/
    stroke(borde);
    line(i, 0, i, height/2);
  }
  // valores posibles de i     0 --> 400
  // valores posibles de color 0 --> 255
  for (int i=0; i<width; i+= 1) {
    int borde = i*255/width;
    stroke(255-borde);
    line(i, height/2, i, height);
  }
}


void config() {
  surface.setTitle("secuencia de lineas");
  surface.setResizable(true);
  surface.setLocation(600, 200);
}
