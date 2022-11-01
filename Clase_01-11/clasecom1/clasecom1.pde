Main m;
public void settings() {
  int x = int(displayWidth/2);
  int y = int(displayHeight/2);

  size(x, y);
}
void setup() {

  m = new Main();
  surface.setResizable(true);
  surface.setTitle("TP5 Adivinanzas");

  surface.setLocation(displayWidth/2, 10);
}

void draw() {
  m.dibujar();
}

void mousePressed() {
  m.mousePressed();
}

void keyPressed() {

  m.keyPressed();
}
