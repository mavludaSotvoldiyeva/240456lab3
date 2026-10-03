//i just added solution for 2 and 3rd problem in one class
class Person {
  final String name;
  final int age;
  Person(this.name, this.age) : assert(age >= 0, 'Age cannot be negative.');
}

//solution for 4th problem
class AppService {
  static final AppService _instance = AppService._internal();
  AppService._internal();
  factory AppService() {
    return _instance;
  }
}
void main() {
  var user = Person('Mavluda', 19);
  print('User created: ${user.name}, Age: ${user.age}');
  var serviceA = AppService();
  var serviceB = AppService();
  print('Are instances identical? ${identical(serviceA, serviceB)}');
}
