// Use the same programm and ensure that attributes of the class are nullable
// with a default value to ensure that you dont have any null exeptions

import 'dart:io';
class Student {
  String? name;
  int? data_structures;
  int? flutter;
  int? data_science;

  // Constructor with default values
  Student({this.name = "Unknown", this.data_structures = 0, this.flutter = 0, this.data_science= 0});

  double getAverage() {
    return ((data_structures ?? 0) + (flutter ?? 0) + (data_science ?? 0)) / 3;
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
    print("\nStudent Name: ${name ?? "No name"}");
    print("Average: ${getAverage().toStringAsFixed(2)}");
    print("Grade: ${getGrade()}");
  }
}

void main() {
  stdout.write("Enter student's name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter data_structures: ");
  int m1 = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter flutter: ");
  int m2 = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter data_science: ");
  int m3 = int.parse(stdin.readLineSync() ?? "0");

  Student s = Student(name: name, data_structures: m1, flutter: m2, data_science: m3);
  s.display();
}