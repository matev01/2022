class MiPrograma {
  int minimo;
  Ball b1, b2; // declaro 2 instancias de la clase Ball
  Ball [] ba = new Ball[50]; //  declaro un arreglo de la clase Ball
  ArrayList <Ball> ball; // declaro un arreglo de tamaño dinámico

  MiPrograma() {
    minimo = width/4;
    b1 = new Ball(random(minimo, width-minimo), random(minimo, height-minimo), random(40, 80));
    b2 = new Ball(color(255, 255, 0));
    for (int i=0; i<ba.length; i++) {
      ba[i] = new Ball(random(minimo, width-minimo), random(minimo, height-minimo), random(40, 80));
    }

    ball = new ArrayList();
    for (int i=0; i<100; i++) {
      ball.add(new Ball(color(255, 255, 0)));
    }
  }
  void display() {
    println("el ArrayList es de "+ ball.size() );
    fill(255, 0, 0);
    text("el ArrayList es de "+ ball.size()+ " elementos", 50, 50);
    b1.dibujar();
    b2.dibujar();
    b1.mover();
    b2.mover();

    for (int i=0; i<ba.length; i++) { // for de arreglo de objetos
      ba[i].dibujar();
      //ba[i].mover();
    }

    for ( Ball b : ball) { // for para ejecutar el ArrayList
      b.dibujar();
      b.mover();
    }
    for (int i= ball.size()-1; i>0; i--) {
      Ball b = ball.get(i); 
      /* get accede a cada una de las instancias creadas 
       en el ArrayList ball y se las translada a b */
      if (b.seSale()) { // si alguna sale por la parte inferior
        ball.remove(i); // no existe mas
      }
    }
    if (frameCount%60==0) { // cada 1 segundo
      ball.add(new Ball(color(255, 255, 0))); // creamos una nueva instancia
    }
  }
}
