import 'dart:async';
//problem2
Future<String> fetchDatabaseUserData(String userId) async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Database profile: $userId';
}
//problem3
Future<void> runConcurrentOperations() async {
  final operationA = Future.delayed(const Duration(milliseconds: 300), () => 'Data stream A');
  final operationB = Future.delayed(const Duration(milliseconds: 150), () => 'Data stream B');
  final operationC = Future.delayed(const Duration(milliseconds: 450), () => 'Data stream C');

  final aggregatedResults = await Future.wait([operationA, operationB, operationC]);
  print('Aggregated batch operations array result: $aggregatedResults');
}

//problem4
Future<void> monitorPeriodicTimer() async {
  final counterStream = Stream.periodic(const Duration(milliseconds: 200), (count) => count + 1);
  final completionTracker = Completer<void>();
  
  late var subscription;
  subscription = counterStream.listen((tickValue) {
    print('Timer tick event registered: $tickValue');
    if (tickValue >= 5) {
      print('Limit criteria matched. Closing stream connection listener.');
      subscription.cancel();
      completionTracker.complete();
    }
  });

  await completionTracker.future;
}
void main() async {
  print('problem2');
  print('Starting to check database...');
  final userData = await fetchDatabaseUserData('UID-240456');
  print('Response received: $userData');

  print('\nproblem3');
  print('Dispatching async batch groups...');
  await runConcurrentOperations();

  print('\nproblem4');
  print('Monitoring periodic timer events...');
  await monitorPeriodicTimer();
  print('All operations finalized.');
}
