class Rueda {
  float rx, ry, d;
  Rueda() {
  }
  void dibujarRueda(float x, float y, float d) {
    this.rx = x;
    this.ry = y;
    this.d = d;
    push();
    translate(x, y);
    rotate(radians(frameCount*-1));
    fill(200);
    strokeWeight(2);
    circle(0, 0, d);
    line(-d/2, 0, d/2, 0);
    line(0, -d/2, 0, d/2);
    fill(50);
    circle(0, 0, d/2);
    pop();
  }
}
