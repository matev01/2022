int cant = 2000;
float [][] pos = new float[cant][2];
float [] dx = new float [cant];
float [] dy= new float [cant];
float [] tam = new float [cant];
float [] tono = new float [cant];
void setup() {
  size(600, 600);
  for (int i=0; i<cant; i++) {
    pos[i][0] = mouseX;
    pos[i][1] = mouseY;
    dy[i] = random(-2, -0.5);
    tam[i] = random(10, 40);
  }
}
void draw() {
  background(255);
  for (int i=0; i<cant; i++) {
    // distancia de cada partícula al mouse
    float distan = dist(pos[i][0], pos[i][1], mouseX, mouseY);
    tono[i] = map(distan, 0, height, 255, 0);
    tam[i] = map(distan, 0, height, 10, 5);
    pos[i][0]+= random(-1, 1);
    pos[i][1] += dy[i];
    if (pos[i][1]<-tam[i]) {
      pos[i][0] = mouseX;
      pos[i][1] = mouseY;
    }
    noStroke();
    fill(0, tono[i]);
    ellipse(pos[i][0], pos[i][1], tam[i], tam[i]);
  }
}
