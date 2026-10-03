//problem2
class Animal {
  void makeSound() => print('animal sound.');
}
class Dog extends Animal {
  @override
  void makeSound() => print('Woof!');
}

//problem3
class Device {
  final String manufacturer;
  Device(this.manufacturer);
}
class Smartphone extends Device {
  final int storageGB;
  Smartphone(super.manufacturer, this.storageGB);
}

//problem4
class Shape {
  final String name;
  Shape(this.name);
  void render() => print('Rendering base shape: $name');
}

class Polygon extends Shape {
  final int sideCount;
  Polygon(super.name, this.sideCount);
  @override
  void render() => print('Rendering $name with $sideCount boundaries');
}

class Triangle extends Polygon {
  Triangle() : super('Triangle', 3);
}
void main() {
  print('problem2');
  var pet = Dog();
  pet.makeSound();
  print('\nproblem3');
  var phone = Smartphone('Apple', 256);
  print('Device Brand: ${phone.manufacturer}, Storage: ${phone.storageGB}GB');
  print('\nproblem4');
  var triangle = Triangle();
  triangle.render(); 
}
