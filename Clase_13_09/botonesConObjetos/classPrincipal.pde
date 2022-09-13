class Programa {
  int pantalla;
  int anchoBot, altoBot;
  Boton bot1, bot2, bot3;
  Programa() {
    anchoBot = 120;
    altoBot = 60;
    bot1 = new Boton(0, altoBot, anchoBot, altoBot );
    bot2 = new Boton(width-anchoBot, altoBot, anchoBot, altoBot);
    bot3 = new Boton(0, altoBot, anchoBot, altoBot );
  }

  void dibujar() {
    text(pantalla, width/2, 100);
    if (pantalla==0) {
      bot1.dibujarBoton(0, 1, "Inicio");
    } else if (pantalla==1) {
      bot2.dibujarBoton(1, 2, "Créditos");
    } else if (pantalla==2) {
      bot3.dibujarBoton(2, 0, "Volver");
    }
  }
  void accionarBotones() {
    if (bot1.botonPress(0, altoBot, anchoBot, altoBot) && pantalla==bot1.actual) {
      pantalla = bot1.prox;
    }
    if (bot2.botonPress(width-anchoBot, altoBot, anchoBot, altoBot)&&pantalla==bot2.actual) {
      pantalla = bot2.prox;
    }
    if (bot3.botonPress(0, altoBot, anchoBot, altoBot)&& pantalla==bot3.actual) {
      pantalla = bot3.prox;
    }
  }
}
