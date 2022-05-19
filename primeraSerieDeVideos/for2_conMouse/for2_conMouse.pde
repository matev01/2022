
int l; 

void setup() {
  size(600, 400);

  frameRate(2); // 2 frames x segundo
}
void draw() {
  background(255); // fondo acá para que no sobreescriba
  line(l, 0, l, 200);
  l = l+20;
  for (int l=0; l<mouseX; l+=20) {
    line(l, 200, l, 400);
  }
}
