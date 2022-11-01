class Estado {
  int estadoID;
  int estadoIDMax;
  String nombreDelEstado;

  Estado(int estadoID, String nombreDelEstado) {
    this.nombreDelEstado = nombreDelEstado;
    this.estadoID = estadoID;
    this.estadoIDMax = 10;
    println( this.estadoID, this.nombreDelEstado);
  }
  void cambiarEstado(int estadoID, String nombreDelEstado) {
    this.nombreDelEstado = nombreDelEstado;
    this.estadoID = estadoID;
  }
  void verificarNombres() {

    switch(this.estadoID) {
    case 0:
      this.nombreDelEstado = "Setup";
    case 1:
      this.nombreDelEstado = "Inicio";
    case 2:
      this.nombreDelEstado = "Pantalla";
    case 3:
      this.nombreDelEstado = "Juego";

     break;
    }

    /* if (this.estadoID == 0) {
     nombreDelEstado = "Setup";
     } else if (this.estadoID == 1) {
     nombreDelEstado = "Inicio";
     } else if (this.estadoID == 1) {
     nombreDelEstado = "Pantalla";
     }
     */
  }

  void verPantallas() {

    if ( this.nombreDelEstado.equals("Pantalla")) {
      println("Es para comparar string");
    }
  }
  void sumarEstado() {
    if (this.estadoID < this.estadoIDMax) {
      this.estadoID++;
    }

    println( this.estadoID, this.nombreDelEstado);
    this.verificarNombres();
  }

  void reiniciarEstado() {
    this.estadoID = 0;
    this.nombreDelEstado = "Setup";

    println(this.estadoID, this.nombreDelEstado);
  }
}
