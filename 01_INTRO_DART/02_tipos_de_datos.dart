void main() {
  
  //tipos de variables
  //final no permite cambiar los valores
  final String pokemon = 'Ditto';
  final int hp = 100;

  final bool isAlive = true;
  
  final listas = ['hola','he','hello'];
  
  final List<String> lists=['a','e','i','o','u'];
  
  final list = <String>['a','b','c'];
  
  //se utiliza tres comillas para abrir y ejecutar en diferentes lineas
  print("""
  $pokemon
  $hp
  $isAlive
  $listas
  $lists
  $list
  
  """);
  
}