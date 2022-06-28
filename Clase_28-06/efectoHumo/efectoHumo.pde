int cant = 2000;
float [][] pos = new float[cant][2];
float [] dx = new float [cant];
float [] dy= new float [cant];
float [] tam = new float [cant];
float [] tono = new float [cant];
void setup() {
  size(600, 600);
  for (int i=0; i<cant; i++) {
    pos[i][0] = random(width);
    pos[i][1] = random(height);
    dy[i] = random(-2, -0.5);
    tam[i] = random(10, 40);
  }
}
void draw() {
  background(0);
  for (int i=0; i<cant; i++) {
    float distan = dist(pos[i][0], pos[i][1], pos[i][0], 0);
    tono[i] = map(distan, height, 0, 255, 0);
    tam[i] = map(distan, height, 0, 15, 5);
    pos[i][0]+= random(-1, 1);
    pos[i][1] += dy[i];
    if (pos[i][1]<-tam[i]) {
      pos[i][0] = mouseX;
      pos[i][1] = mouseY;
    }
    noStroke();
    fill(200, tono[i]);
    ellipse(pos[i][0], pos[i][1], tam[i], tam[i]);
  }
}
