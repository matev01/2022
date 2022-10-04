class Auto {
  float x, y, t ; // ubicación y tamaño
  float vel, dir, anguloGiro; // velocida, direccion y angulo de giro
  Auto(float x, float y, float t, float dir) {
    this.x = x;
    this.y = y;
    this.t = t;
    this.dir = dir;
    anguloGiro = radians(2);
    rectMode(CENTER);
    vel = 1.5;
  }
  void dibujar() {
    fill(0, 0, 255);
    push();
    translate(x, y);
    rotate(dir);
    rect(0, 0, t*2, t);
    fill(255, 0, 0);
    circle(-t/2, 0, t/2);
    pop();
  }
  void mover() {
    float dx = vel * cos(dir);
    float dy = vel * sin(dir);
    x += dx;
    y += dy;
  }
  void patinar() {
    x += random(-3, 3);
    y += random(-3, 3);
  }
  void girarDerecha() {
    dir += anguloGiro;
  }
  void girarIzquierda() {
    dir -= anguloGiro;
  }
}
