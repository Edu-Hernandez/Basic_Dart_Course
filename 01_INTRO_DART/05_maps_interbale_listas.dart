void main() {
  
  final listas = [1,2,3,4,5,6,7,7,8,9,9,0,10,12,11];
  
  //devuelve la cantidad de numeros de la lista
  print('resultado 1: ${listas.length}');
  
  //devuleve el primer numero de la lista
  print('resultado 2: ${listas[0]}');
  
  //devuleve el primer numero de la lista
  print('First: ${listas.first }');
  
  //numeros en reversa de la lista devuelve un iterable
  print('Reversed: ${listas.reversed}');
  
  //convertir ese iterable en una lista
  final resultado = listas.reversed;
  print('toList: ${ resultado.toList()}');
  
  //convertir ese iterable numeros unicos y no repetidos
  final resultado2 = listas.reversed;
  print('toSet: ${ resultado2.toSet()}');
  
  
  //convetir este iterable en una lista y valores unicos
  final resultado3 = listas.reversed;
 print('resultado: ${resultado3.toSet().toList()}');
  
  //utilizar where para encontrar un numero mayor
  final nummayor = resultado3.where( (num){
    return num > 5 && num < 9;
  });
  
  print('numero mayor de 5 y menor de 9: ${nummayor}');
  
}
