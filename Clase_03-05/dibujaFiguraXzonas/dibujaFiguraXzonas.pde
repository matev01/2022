void setup() {
  size(640, 480);
  background(255);
  rectMode(CENTER);
}
void draw() {
  float px = random(width);
  float py = random(height);
  if (px<width/2 && py<height/2) {
    fill(0, 0, 255);
    ellipse(px, py, 20, 20);
  }
  if (px>width/2 && py<height/2) {
    fill(255, 0, 05);
    rect(px, py, 20, 20);
  } else if (px>width/2 && py<height/2) {
    fill(255, 0, 05);
    rect(px, py, 20, 20);
  } else if (px<width/2 && py>height/2) {
    fill(255, 255, 0);
    ellipse(px, py, 10, 30);
    ellipse(px, py, 30, 10);
  } else if (px>width/2 && py>height/2) {
    fill(0, 255, 0);
    rect(px, py, 10, 30);
    rect(px, py, 30, 10);
  }
  println(px);
}
