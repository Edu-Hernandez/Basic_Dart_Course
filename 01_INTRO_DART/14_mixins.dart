// los mixis son una frma de reutilizar el codigo de una clase en mùltiples jerarquìas de clases

//restrinciiones: mixins no puede declarar codigo
// no puede extender clases u otros mixins
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

// clase de aves
class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

//clase de Pez
class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.volar();
  batman.caminar();

  final felix = Gato();
  felix.caminar();

  final pigeon = Paloma();
  pigeon.volar();
  pigeon.caminar();

  final duck = Pato();
  duck.volar();
  duck.caminar();
  duck.nadar();

  final shark = Tiburon();
  shark.nadar();

  final flyingFish = PezVolador();
  flyingFish.volar();
  flyingFish.nadar();
}

