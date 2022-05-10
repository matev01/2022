int px;
int cuenta;
void setup() {
  size(500, 500);
  // tint(); // investigar tint
}
void draw() {
  background(0);
  float tono = px*255/width; // regla de tres
  fill(255, 0, 0, tono);
  ellipse(px, 100, 100, 100);
  if (frameCount%30==0) {
    px+= 10;
  }

  if (px>width-50) {
    px = 50;
    cuenta = 0;
  }

  //delay(2000); // demora el programa 2 segundos
  textSize(25);
  fill(255, 0, 0);
  text("tono "+ cuenta, 400, 50);
  text(frameCount, 400, 100);

  cuenta++;
}
void mousePressed() {
  cuenta = 0;
  px = 0;
  frameCount=0;
}
