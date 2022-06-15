
//cargar arreglos desde archivo txt externo con loadStrings()

//declaro mi arreglo SIN asignarle su dimensión
String[] asistencia;

void setup(){
  size( 400, 400 );
  textAlign( CENTER, CENTER );
  textSize( 24 );
  
  //cargo el archivo externo, quien le da tamanio al arreglo
  asistencia = loadStrings( "asistencia.txt" );
  
  println( asistencia );
}

void draw(){
  background( 0 );
  
  for( int i = 0 ; i < asistencia.length ; i++ ){
    //arriba hacia abajo
    text( asistencia[i], 100, (i * 30) + (frameCount-300) );
    //abajo hacia arriba
    text( asistencia[i], 300, (i * 30) - (frameCount-500) );
  }
}
