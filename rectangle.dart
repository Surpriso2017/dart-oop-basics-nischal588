import 'dart:io';

class Rectangle {
  late int length, breadth;

  area(int length, int breadth) {
    int area = length * breadth;
    print("the area of the rectangle = $area");
  }

  perimeter(int length, int breadth) {
    int per = 2 * (length + breadth);
    print("the perimiter of the rectangle $per");
  }
}

void main() {
  var rect = Rectangle();
  print("Length of Rectangle");
  String? len = stdin.readLineSync();
  print("Breadth of Rectangle");
  String? bread = stdin.readLineSync();
  try {
    rect.length = int.parse(len!);
    rect.breadth = int.parse(bread!);

    rect.area(rect.length, rect.breadth);
    rect.perimeter(rect.length, rect.breadth);
  } catch (e) {
    print("Invalid Value");
  }
}
