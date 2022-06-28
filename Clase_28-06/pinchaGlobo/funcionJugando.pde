// esta función es llamada mientras se juega.
void jugando() {
  fill(0); 
  textSize(30);
  text(perdidos, 50, 50);// globos perdidos
  for (int i=0; i<cant; i++) {
    if (activo[i]) {
      /*activo determina si el globo se dibuja, si se mueve y cuando
      deja de aumentar*/
      fill(255, 0, 0);
      ellipse(px[i], py[i], tam, tam);
      px[i]+= dx[i];
      py[i]+= dy[i];
      if (px[i]<0 || px[i]>width || py[i]<0 || py[i]>height) {
        perdidos++;
        activo[i] = false;
        // si salen de la pantalla dejan de estar activos y suma una perdida
      }
    }
  }
}
