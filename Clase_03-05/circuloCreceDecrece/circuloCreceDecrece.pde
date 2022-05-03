int tam;
boolean crece;
void setup() {
  size(640, 480);
  crece = true;
}
void draw() {
  background(100);
  ellipse(width/2, height/2, tam, tam);
  if (crece) {
    tam++;
  } else {
    tam--;
  }
  if (tam>height || tam<0) {
    crece = !crece;
  }
}
