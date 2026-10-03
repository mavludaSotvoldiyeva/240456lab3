//problem2
enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }
void printAllDays() {
  for (var day in Day.values) {
    print('Today: ${day.name}');
  }
}

//problem3
String getDayDisplayName(Day day) => switch (day) {
  Day.monday    => 'Monday',
  Day.tuesday   => 'Tuesday',
  Day.wednesday => 'Wednesday',
  Day.thursday  => 'Thursday',
  Day.friday    => 'Friday',
  Day.saturday  => 'Saturday',
  Day.sunday    => 'Sunday',
};
//problem4
abstract interface class DayClassification {
  bool get isWeekend;
}
enum BusinessDay implements DayClassification {
  monday, tuesday, wednesday, thursday, friday, saturday, sunday;
  @override
  bool get isWeekend => this == saturday || this == sunday;
  String get dynamicGreeting => isWeekend ? 'finally, we made it!' : 'Weekend is near(❁´◡`❁)!';
}
void main() {
  print('problem2');
  printAllDays();
  print('\nproblem3');
  print(getDayDisplayName(Day.wednesday));
  print('\nproblem4');
  var today = BusinessDay.sunday;
  print('Is today weekend? ${today.isWeekend}');
  print('Greeting: ${today.dynamicGreeting}'); 
}
