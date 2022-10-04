float ang;
int boca;
void setup() {
  size(400, 400);
}
void draw() {
  background(0);

  ang = atan2(mouseY-height/2, mouseX-width/2); //
  cara(width/2, height/2, 200, ang);
  cara(350, 350, 100, ang);
  cara(50, 350, 100, ang);
  for (int i=0; i<4; i++) {
    cara(50+i*100, 50, 100, ang);
  }
}
void cara(float x, float y, float tam, float angulo) {

  fill(255, 255, 0);
  ellipse(x, y, tam, tam);
  ojo(x-tam/4, y, tam/4, angulo);
  ojo(x+tam/4, y, tam/4, angulo);
  fill(100);
  ellipse(x, y+tam/4, tam/4, tam/8);
}

void ojo(float x, float y, float tam, float ang) {

  fill(250);
  ellipse(x, y, tam, tam);

  push();
  translate(x, y);

  rotate(ang);
  fill(255, 50, 0);
  ellipse(tam/4, 0, tam/2, tam/2);
  fill(100);
  ellipse(tam/4, 0, tam/4, tam/4);

  pop();
}
