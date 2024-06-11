void main(){
  var animal1 = Perro(nom: 'Brandok',edad: 2);
  var result  = animal1.Informacion();

  
}
enum Comida {carne, hierba, carbohidratos}
abstract class Animales{
  String nombre;
  Comida comida;
  int edad;
  
  Animales({
    required this.nombre, 
    required this.comida,
    required this.edad
  });
  
  void Informacion();
}

class Perro extends Animales{
  
  Perro({ required String nom, required int edad})
    :super(nombre: nom,comida: Comida.carne, edad:edad);
  
  @override
  void Informacion(){
    print(' este animal es un: ${nombre} y su: ${comida} a la edad de: ${edad}');
  }
}