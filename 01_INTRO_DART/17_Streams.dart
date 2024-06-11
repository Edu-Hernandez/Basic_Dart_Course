//los streams para emitir valores alguien tiene que estar escuchandolo

void main() {
  
  emitNumbers().listen( (value){
    print('string value: $value');
  });
}

Stream<int> emitNumbers()
{
  return Stream.periodic(const Duration(seconds: 1), (value){
   //print('desde periodic $value');
    return value; 
  }).take(5);
  
  //el take() es para decirle cuantos valores imprimir
  //si no se dice eso se harà un recorrido infinito
}