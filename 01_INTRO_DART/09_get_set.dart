void main() {
  var persona = Persona('Juan', 30);

  // Uso de getters
  print(persona.nombre); // Output: Juan
  print(persona.edad); // Output: 30

  // Uso de setters
  persona.nombre = 'María';
  persona.edad = 25;

  print(persona.nombre); // Output: María
  print(persona.edad); // Output: 25

  // Intento de establecer una edad negativa
  persona.edad = -5; // Output: La edad debe ser un número positivo

  var animal = Animales('marcos', 'chusco');

  print(animal.nombre);
  print(animal.raza);

  animal.nombre = 'brandock';
  animal.raza = 'pitbull';

  print(animal.nombre);
  print(animal.raza);
}

class Persona {
  String _nombre;
  int _edad;

  // Constructor
  Persona(this._nombre, this._edad);

  // Getter para _nombre
  String get nombre => _nombre;

  // Setter para _nombre
  set nombre(String nuevoNombre) {
    _nombre = nuevoNombre;
  }

  // Getter para _edad
  int get edad => _edad;

  // Setter para _edad con validación
  set edad(int nuevaEdad) {
    if (nuevaEdad > 0) {
      _edad = nuevaEdad;
    } else {
      print('La edad debe ser un número positivo');
    }
  }
}

class Animales {
  String _nombre;
  String _raza;

  Animales(this._nombre, this._raza);

  String get nombre => _nombre;

  set nombre(String nom) {
    _nombre = nom;
  }

  String get raza => _raza;

  set raza(String ra) {
    _raza = ra;
  }
}