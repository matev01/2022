ArrayList <Bala> cargador;
void setup() {
  size(800, 600);
  cargador = new ArrayList();
}

void draw() {
  background(0);
  for (int i = cargador.size()-1; i > 0; i--) { 
    Bala unaBala = cargador.get(i);
    if (unaBala.disparada == false) {
      cargador.remove(i);
    }
  }

  for (Bala estaBala : cargador) {
    estaBala.mover();
    estaBala.dibujar();
  }
}
void mousePressed() {
  cargador.add(new Bala(mouseX, mouseY, true)); // agrego una nueva instancia de Bala
}
