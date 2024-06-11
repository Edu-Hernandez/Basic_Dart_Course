

  //funcion assync siempre retorna un future
  //se puede usar await solo dentro de assync
  
  //realiza operaciones que toman tiempo
  
  //await para esperar el resultado de la operaciòn
  
  

// Función simulada que retorna un String después de 2 segundos
try{
Future<String> fechaData() async{
    return Future.delayed(Duration(seconds: 2), ()=> 'Datos recibidos');
  }
}catch(err){
  print('cometiste un error: $err')
}
// Función principal que usa async y await
void main() async {
  print('inicio de solicitud');
  
  //usamos await para esperar el resultado de fecha
  String data = await fechaData();
  
  // Una vez que fetchData termine, imprimimos el resultado
  print(data);
  
  print('fin de solicitud');
}

-- ------------------------------------
Future<String> datos() async {
  return Future.delayed(Duration(seconds: 2), ()=>'Tiempo establecido correcto');

}
void main1() async{
  print('tiempo inicio')
  String datos = await datos()
  print('tiempo terminado')
}

