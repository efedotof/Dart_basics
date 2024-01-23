class RootCalculator {
  int _epsilon = 1e-10.toInt(); // Точность для проверки сходимости

  int _abs(int x) => x < 0 ? -x : x; // Вспомогательная функция для модуля числа

  int _power(int x, int n) {
    int result = 1;
    for (int i = 0; i < n; i++) {
      result *= x;
    }
    return result;
  }

  int _updateGuess(int guess, int x, int n) {
    return ((n - 1) * guess + x ~/ _power(guess, n - 1)) ~/ n;
  }

  int _calculateRoot(int x, int n) {
    if (x < 0 && n % 2 == 0) {
      throw ArgumentError("Cannot calculate even root of a negative number");
    }

    if (x == 0) {
      return 0;
    }

    int guess = x ~/ 2; // Начальное предположение

    while (_abs(_power(guess, n) - x) > _epsilon) {
      guess = _updateGuess(guess, x, n);
    }

    return guess;
  }

  int dart(int x, int n) {
    if (n <= 0) {
      throw ArgumentError("Invalid exponent value");
    }

    if (x < 0 && n % 2 == 0) {
      throw ArgumentError("Cannot calculate even root of a negative number");
    }

    return _calculateRoot(x, n);
  }
}

extension RootExtension on num {
  int root(int n) {
    if (this is! int) {
      throw ArgumentError("Invalid input type. Must be int.");
    }

    return RootCalculator().dart(this.toInt(), n);
  }
}


//Пример использования.


// void main() {
  // try {
  //   int result = 27.root(3);
  //   print("$result");
  // } catch (e) {
  //   print("Error: $e");
  // }
// }
