import 'dart:developer';

import 'export.dart';

class MyLib {
    void binaryConverters(int decimalNumber){
      String binaryRepresentation = BinaryConverter.decimalToBinary(decimalNumber);
      log("Десятичное число $decimalNumber в двоичной системе: $binaryRepresentation", name: 'Ответ');
    }

    void binaryConvertersDecimal(String binaryNumber){
      int decimalResult = BinaryConverter.binaryToDecimal(binaryNumber);
      log("Двоичное число $binaryNumber в десятичной системе: $decimalResult", name: 'Ответ');
    }

    void digitExtractors(String inputString){
      List<int> extractedDigits = DigitExtractor.extractDigits(inputString);
      log("Уникальные цифры в строке \"$inputString\": $extractedDigits");
    }

    void linearEquationSolver(List<List<double>> coefficients){
      LinearEquationSolver(coefficients).solveSystem();
    }

    void mathOperations(int num1, int num2){
      int gcd = MathOperations.findGCD(num1, num2);
      int lcm = MathOperations.findLCM(num1, num2);
      log("НОД($num1, $num2) = $gcd", name: 'Ответ');
      log("НОК($num1, $num2) = $lcm", name: 'Ответ');
    }

    void mathOperationsPrimeFactorization(int numberToFactorize){
      List<int> primeFactors = MathOperations.primeFactorization(numberToFactorize);
      log("Простые множители числа $numberToFactorize: $primeFactors", name: 'Ответ');
    }

    void numberExtractor(String inputString){
        List<num> extractedNumbers = NumberExtractor.extractNumbers(inputString);
        log("Числа в строке \"$inputString\": $extractedNumbers", name: 'Ответ');
    }

    void points(){
      Point point1 = Point(1, 2, 3);
      Point point2 = Point.origin();
      Point point3 = Point.unitVector();
      Point point4 = Point.custom(3, 4, 5);

      log("Расстояние между точкой 1 и началом координат: ${point1.distanceTo(point2)}", name: 'Ответ');
      log("Расстояние между точкой 3 и точкой 4: ${point3.distanceTo(point4)}", name: 'Ответ');
    }

    void riemannIntegralCalculator( double Function(double) quadraticFunction,double x1, double x2, int partitions){
      RiemannIntegral riemann = RiemannIntegral(quadraticFunction);
      double result = riemann.calculateRiemannIntegral(x1, x2, partitions);
      log('Результат вычисления интеграла: $result', name: 'Ответ');
    }

    void rootExtension(int num, int degree ){
        try {
          int result = num.root(degree);
          log("$result", name: 'Ответ');
        } catch (e) {
          log("Error: $e", name: 'Error');
        }
    }

    void wordCounter(List<String> wordsCollection){
      // List<String> wordsCollection = [
      //   'apple', 'orange', 'apple', 'banana', 'orange', 'apple', 'grape', 'pear'
      // ];
      Map<String, int> wordCountResult = WordCounter.countWords(wordsCollection);

      log("Слова и их количество в коллекции:");
      wordCountResult.forEach((word, count) {
        log("$word: $count", name: 'Ответ');
      });
    }

    void users(List<User> users){
      var userManager = UserManager<User>();
      for (var element in users) {
         userManager.addUser(element);
      }
      log('Initial user list:', name: 'Ответ');
      userManager.displayEmails();
  }

}






