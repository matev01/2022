class Baches {
  float x, y, d;
  Baches(float x, float y, float d) {
    this.x = x;
    this.y = y;
    this.d = d;
  }
  void dibujarBache() {
    fill(100);
    noStroke();
    circle(x, y, d);
  }
}
