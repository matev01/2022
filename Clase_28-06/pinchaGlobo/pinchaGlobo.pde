/*Este programa es un juego donde se deben pinchar los globos antes de que salgan de la pantalla.
Por cada globo que sale, se pierde un punto. 
*/
String [] mensaje = {"Revienta 5 globos\n antes de que salgan\n de la pantalla", 
  "Ganaste, bien!!!", "GAME OVER, loser"};
String estado; // estado del programa
int cant = 10; // cantidad de globos
int tam = 50; // tamaño de los globos
int perdidos; // cuenta los perdidos
// arreglos para ubicación, dirección
float [] px = new float[cant];
float [] py = new float[cant];
float [] dx = new float[cant];
float []dy = new float[cant];
// este arreglo determina varias cosas de cada globo
boolean [] activo = new boolean[cant];
void setup() {
  size(600, 600);
  estado = "jugando";
  for (int i=0; i<cant; i++) {
    px[i] = random(200, 400);
    py[i] = random(200, 400);
    dx[i] = random(-2, 2);
    dy[i] = random(-2, 2);
    activo[i] = true;
  }
}
void draw() {
  background(255);
  /* hay que completar los estados, 
  determinar un evento para reventar los globos y
  sumar puntos sobre cada globo reventado */
  if (estado.equals("inicio")) {
    pantalla(mensaje[0], color(0, 0, 255), 30);
  } else if (estado.equals("jugando")) {
    jugando();
  }
}
// función para cargar pantallas genéricas
void pantalla(String texto, color relleno, int tamText) {
  textAlign(CENTER);
  textSize(tamText);
  fill(relleno);
  text(texto, width/2, height/2);
}
