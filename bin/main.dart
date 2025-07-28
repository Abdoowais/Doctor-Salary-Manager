import 'dart:io';

void main() {
  List<String> doctorNames = [];
  List<double> Salaries = [];

  while (true) {
    print(" Enter doctor name : ");
    String names = stdin.readLineSync()!;
    if (names != null || names.trim().isNotEmpty) {
      doctorNames.add(names);
    }
    print("do you want to add another doctor name ?(yes/no) : ");
    String answer = stdin.readLineSync()!;
    if (answer.toLowerCase() != "yes" || answer == null) {
      break;
    }
  }
  for (var names in doctorNames) {
    double? salary;
    while (salary == null || salary <= 0) {
      print("enter salary for Dr $names");
      String input = stdin.readLineSync()!;
      if (input == null) {
        print("please enter valid salary  : ");
        continue;
      }
      salary = double.tryParse(input);
    }
    if (salary == null || salary <= 0) {
      print("invalid salary , please enter positive num ");
      salary == null;
    }
    Salaries.add(salary);
  }
  print("total numbers of doctors = ${doctorNames.length}");
  double total = Salaries.reduce((a, b) => a + b);
  double average = total / Salaries.length;
  double highest = Salaries.reduce((a, b) => a > b ? a : b);
  double lowest = Salaries.reduce((a, b) => a < b ? a : b);
  int highestIndex = Salaries.indexOf(highest);
  int lowestIndex = Salaries.indexOf(lowest);

  print("Total of all salaries $total");
  print("Total of all salaries $average");
  print("Total of all salaries $highest");
  print("Total of all salaries $lowest");
  print(
    "the doctor with highest salary = ${Salaries[highestIndex]} is dr ${doctorNames[highestIndex]}",
  );
  print(
    "the doctor with lowest salary = ${Salaries[lowestIndex]} is dr ${doctorNames[lowestIndex]}",
  );
  for (int i = 0; i < doctorNames.length; i++) {
    print("dr ${doctorNames[i]}");
    print("his salary ${Salaries[i]}");
  }
}
