void main(){
  
  //si en caso sea petición de fuera
  //si lo que recibimos es algo de una petición web, http
  //estructura de mapa
  
  final Map <String, dynamic> rawJson = {
    'nombre':'Eucalipto',
    'tipo': 'grande',
    'isAlive':true
  };
  
  final plantas = Plantas.fromJson(rawJson);
  print(plantas);
  
}


class Plantas{
  
  String nombre;
  String tipo;
  bool isAlive;
  
  
  Plantas({
    required this.nombre,
    required this.tipo,
    required this.isAlive
    });
  
  //constructor con nombre para json
  Plantas.fromJson(Map <String, dynamic> json)
    :nombre = json['nombre'] ?? 'No name found',
    tipo = json['tipo'] ?? 'No tipo found',
    isAlive = json['isAlive'] ?? 'No isAlive found';
  
  
  @override
  String toString() {
    return '$nombre - $tipo - ${isAlive ? 'YES!':'NOW!'}';
    //haciendo uso de ternario {}
    //si isAlive esta vivo yes, si no now
  }
  
}
