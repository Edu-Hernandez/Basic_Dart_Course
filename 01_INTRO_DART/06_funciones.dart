void main() {
 
  print(datos());
  
  print(nombres());
  
  print(numeros(2,3));
  
  print(numlamda(2,3));
  
  print(finalnum(23));
  
  print(finalnum1(23));
}

//ejemplo de funcion 1
String datos(){   return 'hola mundo';  }

//ejemplo de funcion 1
String nombres() => 'hello word';

//ejemplo de funcion 2
int numeros(int a, int b){  return a + b; }

//ejemplo de funcion 2
int numlamda(int a, int b) => a + b;

//ejemplo de funcion 3, valores opcionales?
//las llaves de tipo lista indica que el valor es opcional

int finalnum(int a, [int b = 0]){
  return a + b;
}

//ejemplo de funcion 3
int finalnum1(int a, [int b = 0])=> a + b;


// Funciones con parametros
//clase
void main() {
  print(datos());
  print(porquewhy(name: 'alan edu'));
}

//funcion
//required siignifica que es obligatorio
//las llaves significa que los parametros pueden ser opcionales
String porquewhy({required String name, String message = 'hola, '}){
  
  //concatenar
  return '$message $name';
}