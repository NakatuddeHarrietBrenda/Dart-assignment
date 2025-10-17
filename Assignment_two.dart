// Use the same programm and ensure that attributes of the class are nullable
// with a default value to ensure that you dont have any null exeptions
// null means something is allowed to be empty

import 'dart:io';
class Student {
  String? name;
  int? system_analysis;
  int? python;
  int? data_science; 

  // Constructor with default values
  Student({this.name = "Unknown", this.system_analysis = 0, this.python = 0, this.data_science= 0});
//But you’ve provided default values in the constructor, so if the user doesn’t enter anything:// name defaults to "Unknown".// All marks default to 0.

  double getAverage() {
    return ((system_analysis ?? 0) + (python ?? 0) + (data_science ?? 0)) / 3;
    // The ?? 0 ensures that if any field is null, it’s treated as 0
  }

  String getGrade() {
    double avg = getAverage();
    if (avg >= 80) return 'A';
    else if (avg >= 70) return 'B';
    else if (avg >= 60) return 'C';
    else if (avg >= 50) return 'D';
    else if (avg >= 40) return 'E';
    else return 'F';
  }

  void display() {

    // print("\nStudent Name: ${name ?? "No name"}");

    // when i use the first commented out print,  stdin.readLineSync() never returns null when you just press Enter — it returns an empty string "".
// In Dart, an empty string "" is not null.
// So the ?? "No name" operator does not trigger, because the variable name is technically not null; it’s "".
    
    print("\nStudent Name: ${name == null || name!.isEmpty ? "No name" : name}");
    // name == null → catches null values, name!.isEmpty → catches empty string ""
    print("Average marks: ${getAverage().toStringAsFixed(2)}");
    print("Student's Grade: ${getGrade()}");
  }
}

void main() {
  stdout.write("Enter student's name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter marks for system_analysis: ");
  // int m1 = int.parse(stdin.readLineSync() ?? "0"); 
  //we use tryParse bcs it returns null if conversion fails rather than parse
  int m1 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Enter marks for python: ");
  int m2 = int.parse(stdin.readLineSync() ?? "0");
  
  stdout.write("Enter marks for data_science: ");
  int m3 = int.parse(stdin.readLineSync() ?? "0");

  Student s = Student(name: name, system_analysis: m1, python: m2, data_science: m3);
  s.display();
}