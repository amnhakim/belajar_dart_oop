abstract class Car {
  String name = '';

  void drive() {
    print('Drive ${this.name}');
  }

  int getTier() {
    return 0;
  }
}

abstract class HasBrand {
  String getBrand();
}

// multiple interface
class Avanza implements Car, HasBrand {
  String name = 'Avanza';

  String getBrand() => 'Toyota';

  void drive() {
    print('Drive ${this.name}');
  }

  int getTier() {
    return 4;
  }
}
