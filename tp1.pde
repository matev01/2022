float cuenta, tono;
void setup() {
  size(640, 480);
  textSize(50);
  textAlign(CENTER);
  tono = 1;
  cuenta = 1; // << probar 0.5
}
void draw() {
  background(0);
  if (tono>255||tono<1) {
    cuenta *= -1;
  }
  tono += cuenta;
  fill(255, 0, 0, tono);
  if (frameCount<=500) {
    text("THE HUNT", width/2, height/2);
  } else if (frameCount>500 && frameCount<= 1000) {
    text("Betty Gilpin\nHilary Swank", width/2, height/2);
  } else if (frameCount>1000 && frameCount<1500) {
    text("Dirección\nCraig Zobel", width/2, height/2);
  }
  println(frameCount);
}
