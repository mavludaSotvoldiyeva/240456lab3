interface class DBConnector {
  void connect() => print('Connecting to database...');
}
class MySQLConnector implements DBConnector {
  @override
  void connect() => print('Blutooth successfully connected');
}
mixin Flyable {
  void fly() => print('Fly, fly, fly!');
}
class Bird with Flyable {
  void chirp() => print('Chirp chirp!');
}
mixin Walker {
  void walk() => print('Walking on the moon...');
}
mixin Swimmer {
  void swim() => print('Swimming through water.');
}
class Duck with Walker, Swimmer, Flyable {
  void quack() => print('I am supper quack, quack!');
}
void main() {
  print('problem2');
  var database = MySQLConnector();
  database.connect();

  print('\nproblem3');
  var robin = Bird();
  robin.chirp();
  robin.fly();
  print('\nproblem4');
  var duck = Duck();
  duck.quack();
  duck.walk();     
  duck.swim(); 
  duck.fly(); 
}
