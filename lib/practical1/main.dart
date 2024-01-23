import 'dart:developer';
import 'mylib/export.dart';
import 'mylib/mylib.dart';

void main() {
  MyLib myLib = MyLib(); //init

  //Задание 1
  log('Задание 1 \n', name: 'Задание');
  myLib.mathOperations(36, 48);
  myLib.mathOperationsPrimeFactorization(60);

  //Задание 2
  log('Задание 2 \n', name: 'Задание');
  myLib.binaryConverters(25);
  myLib.binaryConvertersDecimal("11001");

  //Задание 3
  log('Задание 3 \n', name: 'Задание');
  myLib.numberExtractor("42 hello 3.14 world 7");

  //Задание 4
  log('Задание 4 \n', name: 'Задание');
  myLib.wordCounter([
    'apple',
    'orange',
    'apple',
    'banana',
    'orange',
    'apple',
    'grape',
    'pear'
  ]);

  //Задание 5
  log('Задание 5 \n', name: 'Задание');
  myLib.digitExtractors('one, two, zero, zero, three, five');

  //Задание 6
  log('Задание 6 \n', name: 'Задание');
  myLib.points();

  //Задание 7
  log('Задание 7 \n', name: 'Задание');
  myLib.rootExtension(27, 3);

  //Задание 8
  log('Задание 8 \n', name: 'Задание');
  myLib.users([
    AdminUser('admin@mail.com'),
    GeneralUser('user1@mail.com'),
    GeneralUser('user2@mail.com'),
  ]);

  //Задание 9
  log('Задание 9 \n', name: 'Задание');
  double quadraticFunction(double x) {
    return x * x;
  }

  myLib.riemannIntegralCalculator(quadraticFunction, 0, 2, 100);

  //Задание 10
  log('Задание 10 \n', name: 'Задание');
  myLib.linearEquationSolver([
    [2, 1, 3, 10],
    [1, 2, 1, 5],
    [3, 1, 4, 18],
  ]);
}
