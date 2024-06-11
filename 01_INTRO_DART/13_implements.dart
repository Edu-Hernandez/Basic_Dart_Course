// Definición de Interfaces y Clases Abstractas
enum TipoVehiculo {avion, coche, barco, anfibio}

abstract class Vehiculo {  
  String nombre;
  TipoVehiculo tipo;
  
  Vehiculo(this.nombre, this.tipo);

  void mover(); // Método abstracto para mover el vehículo
}

abstract class Volador {
  void volar(); // Método abstracto para volar
}

abstract class Acuatico {
  void navegar(); // Método abstracto para navegar
}

abstract class Terrestre {
  void conducir(); // Método abstracto para conducir
}

// Implementación de Clases Concretas

class Avion implements Vehiculo, Volador {
  String nombre;
  TipoVehiculo tipo;

  Avion(this.nombre) : tipo = TipoVehiculo.avion;

  @override
  void mover() {
    print('El avión $nombre se está moviendo en la pista.');
  }

  @override
  void volar() {
    print('El avión $nombre está volando en el cielo.');
  }
}

class Barco implements Vehiculo, Acuatico {
  String nombre;
  TipoVehiculo tipo;
  Barco(this.nombre): tipo = TipoVehiculo.barco;

  @override
  void mover() {
    print('El barco $nombre está zarpando.');
  }

  @override
  void navegar() {
    print('El barco $nombre está navegando en el mar.');
  }
}

class Coche implements Vehiculo, Terrestre {
  String nombre;
  TipoVehiculo tipo;
  Coche(this.nombre) : tipo = TipoVehiculo.coche;

  @override
  void mover() {
    print('El coche $nombre está arrancando.');
  }

  @override
  void conducir() {
    print('El coche $nombre está conduciendo por la carretera.');
  }
}

class Anfibio implements Vehiculo, Acuatico, Terrestre {
  String nombre;
  TipoVehiculo tipo;

  Anfibio(this.nombre): tipo = TipoVehiculo.anfibio;

  @override
  void mover() {
    print('El vehículo anfibio $nombre está arrancando.');
  }

  @override
  void navegar() {
    print('El vehículo anfibio $nombre está navegando en el agua.');
  }

  @override
  void conducir() {
    print('El vehículo anfibio $nombre está conduciendo por tierra.');
  }
}

// Uso de las Clases y Polimorfismo

void main() {
  List<Vehiculo> vehiculos = [
    Avion('Boeing 747'),
    Barco('Titanic'),
    Coche('Toyota Corolla'),
    Anfibio('Amphicar')
  ];

  for (var vehiculo in vehiculos) {
    print('----');
    print('Tipo de vehículo: ${vehiculo.tipo}');
    vehiculo.mover();

    if (vehiculo is Volador) {
      (vehiculo as Volador).volar();
    }
    if (vehiculo is Acuatico) {
      (vehiculo as Acuatico).navegar();
    }
    if (vehiculo is Terrestre) {
      (vehiculo as Terrestre).conducir();
    }

    print('---');
  }
}
