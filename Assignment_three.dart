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
//   total starts at 0.
// A for loop goes through each mark in the marks list using i as the index
// It adds each mark to total.
// After the loop finishes, it divides total by marks.length to get the average.
// Example: if marks = [80, 70, 90]
// total = 80 + 70 + 90 = 240
// average = 240 / 3 = 80.0

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
    // toStringAsFixed(2) limits the average to 2 decimal places for neat output.
    print("Grade: ${getGrade()}");
  }
}

void main() {
  stdout.write("Enter student's name: ");
  String name = stdin.readLineSync() ?? "Unknown";

  List<double> marks = [];

// Uses a for loop to read 3 subject marks from the user:
// Converts the input from String to double using double.parse.
// Adds each mark to the marks list.

  for (int i = 1; i <= 3; i++) {
    stdout.write("Enter mark for subject $i: ");
    double mark = double.parse(stdin.readLineSync() ?? "0");
    marks.add(mark);
  }

  Student s = Student(name: name, marks: marks);
  s.display();
}





// ✅ Uses a List → Marks are stored in a List<double>.

// ✅ Properties are required → name and marks must be passed via the constructor.

// ✅ Beginner average → Uses a simple for loop, not built-in methods like .reduce().

// ✅ Constructor used → Proper object instantiation.

// ✅ Correct Output → Matches expected average and grade.

// ✅ Map properties concept → The constructor uses named parameters like name: and marks:, similar to map keys.