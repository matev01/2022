void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  strokeWeight(2);

  for (int l=0; l<mouseX; l+=5) {
    line(l, 0, l, 200);
  }
}
