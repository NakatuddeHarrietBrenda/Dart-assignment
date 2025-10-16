//Assignment
// Create the same programm without using a list and ensure that 
//the attributes on the class are required (dont use null safety)

class Student {
  String name = "Harriet";
  int math = 50;
  int science = 70;
  int english = 80;

  double myAverage(){
    return (math + science + english)/3;
  } 

  String getGrade(){
    double average = myAverage();
    if (average >= 90) {
      return "A";
    } else if (average >= 80) {
      return "B";
    } else if (average >= 70) {
      return "C";
    } else if (average >= 60) {
      return "D";
    } else {
      return "F";
    }
}

//Displaying results
void displayResults(){
  print (" ${name}'s average grade is ${myAverage()} ");
}
}

void main(){
  Student student = Student();
  student.displayResults();
}
