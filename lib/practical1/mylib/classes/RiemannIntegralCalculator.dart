class RiemannIntegral {
  late double Function(double) _function;

  RiemannIntegral(double Function(double) function) {
    _function = function;
  }

  double calculateRiemannIntegral(double x1, double x2, int partitions) {
    if (partitions <= 0) {
      throw ArgumentError('Количество разбиений должно быть положительным числом');
    }
    double partitionWidth = (x2 - x1) / partitions;
    double result = 0.0;
    for (int i = 0; i < partitions; i++) {
      double xi = x1 + i * partitionWidth;
      double xiPlus1 = x1 + (i + 1) * partitionWidth;
      if (_hasDiscontinuity(xi, xiPlus1)) {
        double midpoint = (xi + xiPlus1) / 2;
        result += _function(midpoint) * partitionWidth;
      } else {
        result += _function(xi) * partitionWidth;
      }
    }

    return result;
  }

  bool _hasDiscontinuity(double x1, double x2) {
    if (_function(x1).isInfinite || _function(x2).isInfinite) {
      return true;
    }
    if (_function(x1) == 0 && _function(x2) == 0) {
      return true;
    }

    return false;
  }
}

// Пример использования

// void main() {
  // double quadraticFunction(double x) {
  //   return x * x;
  // }
  // RiemannIntegral riemann = RiemannIntegral(quadraticFunction);
  // double result = riemann.calculateRiemannIntegral(0, 2, 100);

  // print('Результат вычисления интеграла: $result');
// }
