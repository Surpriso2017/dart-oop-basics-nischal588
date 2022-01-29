class Student {
  late int rollNum, mark1, mark2, mark3, totalMarks;
  String studName = "";

  int calculateTotal(int mark1, int mark2, int mark3) {
    totalMarks = mark1 + mark2 + mark3;
    return totalMarks;
  }

  displayStudDetails(int rollNum, String studname, int totalMarks) {
    print(" The roll number of the student is $rollNum");
    print(" The name of the student is $studname");
    print(" The total marks of the student is $totalMarks");
  }
}

void main() {
  var student = Student();
  var marks = student.calculateTotal(1, 2, 3);
  student.displayStudDetails(1, "Nischal", marks);
}
