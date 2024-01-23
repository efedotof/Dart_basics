
import 'dart:math';

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.origin() {
    return Point(0, 0, 0);
  }

  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    double dx = this.x - another.x;
    double dy = this.y - another.y;
    double dz = this.z - another.z;

    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  factory Point.custom(double x, double y, double z) {
    return Point(x, y, z);
  }
  factory Point.unitVectorPoint() {
    return Point.unitVector();
  }
}


// Пример использования


// void main() {
  // Point point1 = Point(1, 2, 3);
  // Point point2 = Point.origin();
  // Point point3 = Point.unitVector();
  // Point point4 = Point.custom(3, 4, 5);

  // print("Расстояние между точкой 1 и началом координат: ${point1.distanceTo(point2)}");
  // print("Расстояние между точкой 3 и точкой 4: ${point3.distanceTo(point4)}");
// }
