// arreglos 1

//1) declaracion
String nombre;
String[] nombres;
//declaracion + tamaño
//String[] nombres = new String[5];

//BIG TIP
//declaracion + tamaño + asignacion
String[] nombresConLlaves = { "Maria", "Mateo", "Bautista" };

void setup(){  
  
  //1.5) le damos tamaño al arreglo (dimensión total fija) 
  nombres = new String[3];
  
  //2) asignacion
  nombre = "José Luis";
  //carga manual de datos
  nombres[0] = "José";
  nombres[1] = "Catalina";
  nombres[2] = "Matias";
}

void draw(){
  //3) utilización
  println( nombre );
  println();
  println( "0: " + nombres[0] );
  println();
  println( nombres );
  println();
  for( int i = 0 ; i < nombres.length ; i++ ){
    println( i + ": " + nombres[i] );
  }
  println();
  for( int i = 0 ; i < nombresConLlaves.length ; i++ ){
    println( i + ": " + nombresConLlaves[i] );
  }

  noLoop();  //frena el ciclo draw
}
