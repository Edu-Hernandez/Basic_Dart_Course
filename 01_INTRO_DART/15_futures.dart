void main() {
  //then para el caso exitoso y catcherror para el error
  httpGet('https://github.com/edu-Hernandez/').then((value) {
    print(value);
  }).catchError( (err){
    print('Error: ${err}');
  });

  print('inicio del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    
    //peticiones
    throw 'Error en la petición http';
    
    
    //return 'Respuesta de la petición http';
  });
}
