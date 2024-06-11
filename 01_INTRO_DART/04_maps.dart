void main() {
  //maps
  //parte 1 String - Object
  final pokemon = {
    'name': 'Ditto',
    'hp': 100
  };
  print(pokemon);
  
  //parte 2, int, String
  
  final nombres = {
    1:'Fank',
    2:'Morales'
  };
  print(nombres);
  
  //parte 3 
  
  final Map<String, dynamic> mapas = {
    'nombre': 'Jhosep',
    'edad': 20,
    'genero':'masculino',
    'estado':'soltero',
    'entretenimiento': ['videojuegos', 'deporte','estudio'],
    'padres':{1:'lopez',2:'sanchez'}
  };
  print('resultado:  ${ mapas['genero']}');
  
  //ejercicio para encontrar el primer apellido de padres
  
    final Map<String, dynamic> result = {
    'nombre': 'Jhosep',
    'edad': 20,
    'genero':'masculino',
    'estado':'soltero',
    'entretenimiento': ['videojuegos', 'deporte','estudio'],
    'padres':{ 1:'lopez',2:'sanchez' }
  };
  
  var resultado = result['padres'][1];
  print(resultado);
  print('el padre se llama ${result['padres'][1]}');
  

}