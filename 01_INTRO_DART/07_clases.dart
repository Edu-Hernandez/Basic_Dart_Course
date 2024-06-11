void main(){
  
  final Animales serv1 = new Animales('Perro','pitbull',2);
  
  print(serv1.nombre);
  print(serv1.edad);
  
  //clase personas
  final Personas pers = Personas(nombre: 'Edwin',ape: "Crisostomo", edad: 20);
  
  print(pers.nombre);
  print(pers.ape);
  print(pers.genero);
  
  
  //clase plantas
  final Plantas plantas = Plantas(nombre: 'Pino', tipo: 'Arbusto',clima: 'Templado');
  
  print(plantas.toString());
  
  
}

class Animales{
  
  String nombre;
  String raza;
  int edad;
  
  //otra manera de iniciar el constructor
  Animales(this.nombre, this.raza, this.edad);
  
// otra manera de realizar el constructor a travéz de :
// Animales(String name, String ra, int ed)
// this es opcional
//     :nombre = name,
//     raza = ra,
//     edad = ed;
}

class Personas{
  
  String nombre;
  String ape;
  String genero;
  int edad;
  
  
  Personas({
    required this.nombre,
    required this.ape,
    this.genero = 'prefiero no decirlo',
    required this.edad
    });
  
}

class Plantas{
  
  String nombre;
  String tipo;
  String clima;
  
  
  Plantas({
    required this.nombre,
    required this.tipo,
    required this.clima
    });
  
  @override
  String toString() {
    return '$nombre - $tipo - $clima';
  }
  
}
