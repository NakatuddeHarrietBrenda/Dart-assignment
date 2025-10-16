//use same program using a list to store the marks and the properties of a map in this 
// approach  must be required, the average mark function must use a beginer approach

// ensure all approaches utilize a constructor and in must have right output

import 'dart:io';

class Student {
  String name;
  List<double> marks;

  // Constructor with required properties
  Student({required this.name, required this.marks});

  // Beginner-style average calculation
  double getAverage() {
    double total = 0;
    for (int i = 0; i < marks.length; i++) {
      total = total + marks[i];
    }
    return total / marks.length;
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
    print("\nStudent Name: $name");
    print("Marks: $marks");
    print("Average: ${getAverage().toStringAsFixed(2)}");
    print("Grade: ${getGrade()}");
  }
}

void main() {
  stdout.write("Enter student's name: ");
  String name = stdin.readLineSync() ?? "Unknown";

  List<double> marks = [];

  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter mark for subject $i: ");
    double mark = double.parse(stdin.readLineSync() ?? "0");
    marks.add(mark);
  }

  Student s = Student(name: name, marks: marks);
  s.display();
}
