

//trabajando con asserciones (assert) 
//las aserciones tienen una sintaxis:
//assert(condicion, mensaje de error)
//se encargan de asegurar de que siertas condiciones sean verdaderas


class Persona {
  String _nombre;
  int _edad;

  Persona({required String nombre, required int edad})
      : assert(edad > 0, 'La edad debe ser un número positivo'),
        _nombre = nombre,
        _edad = edad;

  String get nombre => _nombre;
  int get edad => _edad;
}

void main() {
  var persona = Persona(nombre: 'Juan', edad: 30);
  print('Nombre: ${persona.nombre}, Edad: ${persona.edad}');

  // Esto lanzará una aserción porque la edad no es positiva
  var personaInvalida = Persona(nombre: 'María', edad: -5);
  print(personaInvalida);
}