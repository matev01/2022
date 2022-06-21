float px1, px2, px3;
float dx1, dx2, dx3;
int tam;
int cant = 50;
float [] px = new float[cant];
float [] dx; 
int parcial = 25;
void setup() {
  size(600, 600);
  dx = new float[cant];
  tam = height/cant;
  /*px[0] = width/2;
   px[1] = width/2;
   px[2] = width/2;*/
  for (int i=0; i<cant; i++) {
    px[i] = width/2;
    dx[i] = random(-2, 2);
  }


  /*px1 = width/2;
   px2 = width/2;
   px3 = width/2;
   dx1 = random(-2, 2);
   dx2 = random(-2, 2);
   dx3 = random(-2, 2);*/
}
void draw() {
  background(0);
  /*rect(px1, 0, 50, 50);
   rect(px2, 50, 50, 50);
   rect(px3, 100, 50, 50);
   px1 += dx1;
   px2 += dx2;
   px3 += dx3;*/
  for (int i=0; i<parcial; i++) {
    rect(px[i], i*tam, tam, tam);
    //px[i] = px[i]+dx[i];
    if (px[i]>width-tam || px[i]<0) {
      dx[i] *= -1;
    }
    px[i] += dx[i];
  }
}
void mousePressed() {
  if (parcial<cant-1) {
    parcial ++;
  }
}
