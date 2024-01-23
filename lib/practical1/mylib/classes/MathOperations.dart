class MathOperations {
  static int findGCD(int a, int b) {
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a.abs();
  }
  static int findLCM(int a, int b) {
    return (a * b).abs() ~/ findGCD(a, b);
  }

  static List<int> primeFactorization(int number) {
    List<int> factors = [];
    int divisor = 2;

    while (number != 1) {
      while (number % divisor == 0) {
        factors.add(divisor);
        number ~/= divisor;
      }
      divisor++;
    }

    return factors;
  }
}




// Пример использования

// void main() {
  // int num1 = 36;
  // int num2 = 48;
  // int gcd = MathOperations.findGCD(num1, num2);
  // int lcm = MathOperations.findLCM(num1, num2);
  // log("НОД($num1, $num2) = $gcd");
  // log("НОК($num1, $num2) = $lcm");
  // int numberToFactorize = 60;
  // List<int> primeFactors = MathOperations.primeFactorization(numberToFactorize);
  // log("Простые множители числа $numberToFactorize: $primeFactors");
// }
