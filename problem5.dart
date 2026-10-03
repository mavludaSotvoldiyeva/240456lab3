void main() {
  secondProblem();
  thirdProblem();
  fourthProblem();
}
// my solution to 2nd problem
void secondProblem() {
  print('second problem');
  // basic principal amount
  double principal = 1000.0;
  double rate = 0.05; // 5% rate
  int time = 3; // 3 years duration

  /* 
     formula for simple interest:
     interest = principal * rate * time
  */
  double interest = principal * rate * time;
  double total = principal + interest;
  print('Interest: \$${interest}');
  print('Total Amount: \$${total}');
}

// here is for 3rd problem
void thirdProblem() {
  print('third problem');
  try {
    bool isValid = DataValidator.validateAge(20);
    print('Is valid age: $isValid');
    // testing error case
    DataValidator.validateAge(-5);
  } catch (e) {
    print('Caught expected error: $e');
  }
}

///Age validator
/// Takes [age] parameter and checks if valid.
/// Returns `true` if age is okay, throws [ArgumentError] if negative.
class DataValidator {
  static bool validateAge(int age) {
    if (age < 0) {
      throw ArgumentError('Age cannot be negative: $age');
    }
    return true;
  }
}

// for 4th problem
void fourthProblem() {
  print('fourth problem');
  var calc = Calculator();
  print('Result: ${calc.add(5, 10)}');
}

/// A simple calculator to show off markdown formatting in dartdoc.
///
/// **Features:**
/// * Easy addition
/// * Simple setup
///
/// Quick usage:
/// ```dart
/// var calc = Calculator();
/// print(calc.add(2, 3));
/// ```
class Calculator {
  /// Adds two numbers [a] and [b], returns the **sum**.
  double add(double a, double b) {
    return a + b;
  }
}