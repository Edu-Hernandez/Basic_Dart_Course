abstract class Animal {
  // Método abstracto
  void hacerSonido();

  // Método concreto
  void dormir() {
    print('Zzz...');
  }
  
  //metodo bastracto
  void comer();
}
class Perro extends Animal {
  @override
  void hacerSonido() {
    print('Guau Guau');
  }
  
  @override
  void comer(){
    var alimento = 'hueso'
    print('El perro come: ${alimento}');
  }
}
  

class Gato extends Animal {
  @override
  void hacerSonido() {
    print('Miau Miau');
  }
  
  @override
  void comer(){
    print('El gato come: ratones');
  }
}


void main() {
  var perro = Perro();
  perro.hacerSonido(); // Output: Guau Guau
  perro.dormir();      // Output: Zzz...
  perro.comer();

  var gato = Gato();
  gato.hacerSonido(); // Output: Miau Miau
  gato.dormir();      // Output: Zzz...
  gato.comer();
}
