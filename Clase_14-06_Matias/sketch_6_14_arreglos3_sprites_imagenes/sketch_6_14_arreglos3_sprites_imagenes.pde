
// daniel shiftman processing
// the coding train -> canal youtube

//declaro mi arreglo y le doy dimension
PImage[] personaje = new PImage[3];
int c = 0;
float posX = 100;

void setup(){
  fullScreen();  //reemplaza al size: pantalla completa
  imageMode( CENTER );
  
  //realizar la carga de las imagenes individualmente
  personaje[0] = loadImage( "mb00.png" );
  personaje[1] = loadImage( "mb01.png" );
  personaje[2] = loadImage( "mb02.png" );
  //o...
  for( int n = 0 ; n < personaje.length ; n++ ){
    personaje[n] = loadImage( "mb0"+n+".png" );  
  }
  
}

void draw(){
  background( 0 );
  image( personaje[c], posX, height/2 );
}

/*
void keyReleased(){
  c += 1;  //incremento en 1
  if( c == personaje.length )  //reinicio el ciclo
    c = 0;  //puedo evitar las llaves porque es una sola linea de codigo
  println( c );
  //contador que pasa entre [0, 1, 2] y repite 
}
*/

void keyPressed(){
  //MOVIMIENTO
  if( keyCode == RIGHT ){
    posX += 10;
    c += 1;  //incremento en 1 
  }

  if( keyCode == LEFT ){
    posX -= 10;
    c -= 1;  //decrementa en 1     
  }

  if( c == personaje.length ){  //reinicio el ciclo
    c = 0;
  }else if( c == -1 ){
    c = 2;
  }
}
