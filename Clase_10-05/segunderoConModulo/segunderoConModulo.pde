int px;
int cuenta;
void setup() {
  size(500, 500);
}
void draw() {
  background(255);
  fill(0, 0, 255);
  ellipse(px, 100, 50, 50);
  if (cuenta%60==0) {
    px+= 10;
  }

  if (px>width+25) {
    px = 25;
  }

  //delay(2000); // demora el programa 2 segundos
  textSize(25);
  fill(255, 0, 0);
  text(cuenta, 400, 50);
  text(frameCount, 400, 100);
  if (frameCount>360) {
    cuenta = 0;
    px = 0;
  }
  cuenta++;
}
void mousePressed() {
}
