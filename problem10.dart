//problem2
abstract class Shape {
  double area();
}
class Circle extends Shape {
  final double radius;
  Circle(this.radius);
  @override
  double area() => 3.14159 * radius * radius;
}

class Rectangle extends Shape {
  final double width;
  final double height;
  Rectangle(this.width, this.height);
  @override
  double area() => width * height;
}
void calculateTotalArea(List<Shape> shapes) {
  for (var shape in shapes) {
    print('Shape calculated area output: ${shape.area()}');
  }
}

//problem3
void checkAndExecuteShape(Shape shape) {
  if (shape is Circle) {
    print('circle  with radius: ${shape.radius}');
  }
  if (shape is Rectangle) {
    var rect = shape as Rectangle;
    print(' Dimensions: ${rect.width}x${rect.height}');
  }
}

//problem4
class Repository<T> {
  final List<T> _storage = [];
  void save(T item) {
    _storage.add(item);
    print('Successfully stored : ${item.runtimeType}');
  }

  List<T> getAll() => _storage;
}
void main() {
  print('problem2');
  final geometricItems = <Shape>[Circle(5.0), Rectangle(4.0, 6.0)];
  calculateTotalArea(geometricItems);

  print('\nproblem3');
  checkAndExecuteShape(geometricItems[0]);
  checkAndExecuteShape(geometricItems[1]);

  print('\nproblem4');
  final shapeDatabase = Repository<Shape>();
  shapeDatabase.save(Circle(3.5));
  shapeDatabase.save(Rectangle(10, 2));
  print('Total persistent records found: ${shapeDatabase.getAll().length}');
}
