class Abuela {
  float x, y, t;
  Abuela(float x, float y, float t) {
    this.x = x;
    this.y = y;
    this.t = t;
    rectMode(CENTER);
  }
  void dibujarAbuela() {
    stroke(255, 255, 0);
    strokeWeight(3);
    line(x-t/2, y, x+t/2, y);
    line(x, y-t/2, x, y+t/2);
    fill(200, 200, 0);
    rect(x, y, t/2, t/4);
  }
}
