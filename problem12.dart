//problem2
void divideIntegers(int numerator, int denominator) {
  try {
    final result = numerator ~/ denominator;
    print('successful result: $result');
  } on UnsupportedError {
    print('Mathematical error');
  }
}

//problem3
void validateUsername(String? username) {
  if (username == null || username.trim().isEmpty) {
    throw ArgumentError('Username cannot be null or empty.');
  }
  print('Username verification passed: $username');
}
//problem4
void executeSecureTransaction(String? profileId, int itemsCount) {
  try {
    validateUsername(profileId);
    divideIntegers(100, itemsCount);
  } on ArgumentError catch (error) {
    print('Specific error handled: ${error.message}');
  } on Exception catch (exception) {
    print('Generic exception encountered: $exception');
  } catch (unknownError) {
    print('System level failure recorded: $unknownError');
  }
}
void main() {
  print('problem2');
  divideIntegers(10, 2);
  divideIntegers(10, 0);

  print('\nproblem3');
  try {
    validateUsername('developer_account');
    validateUsername('');
  } catch (e) {
    print('Caught validation failure: $e');
  }

  print('\nproblem4');
  print('Running trial 1 (Invalid name):');
  executeSecureTransaction(null, 5);

  print('\nRunning trial 2 (Division by zero inside block):');
  executeSecureTransaction('valid_user', 0);
}
