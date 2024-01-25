import 'dart:developer';
import 'mylib/export.dart';
import 'mylib/mylib.dart';

void main() {
  //Задание 1
  log('Задание 1 \n', name: 'Задание');
  MyLib.mathOperations(36, 48);
  MyLib.mathOperationsPrimeFactorization(60);

  //Задание 2
  log('Задание 2 \n', name: 'Задание');
  MyLib.binaryConverters(25);
  MyLib.binaryConvertersDecimal("11001");

  //Задание 3
  log('Задание 3 \n', name: 'Задание');
  MyLib.numberExtractor("42 hello 3.14 world 7");

  //Задание 4
  log('Задание 4 \n', name: 'Задание');
  MyLib.wordCounter([
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
  MyLib.digitExtractors('one, two, zero, zero, three, five');

  //Задание 6
  log('Задание 6 \n', name: 'Задание');
  MyLib.points();

  //Задание 7
  log('Задание 7 \n', name: 'Задание');
  MyLib.rootExtension(27, 3);

  //Задание 8
  log('Задание 8 \n', name: 'Задание');
  MyLib.users([
    AdminUser('admin@mail.com'),
    GeneralUser('user1@mail.com'),
    GeneralUser('user2@mail.com'),
  ]);

  //Задание 9
  log('Задание 9 \n', name: 'Задание');
  double quadraticFunction(double x) {
    return x * x;
  }

  MyLib.riemannIntegralCalculator(quadraticFunction, 0, 2, 100);

  //Задание 10
  log('Задание 10 \n', name: 'Задание');
  MyLib.linearEquationSolver([
    [2, 1, 3, 10],
    [1, 2, 1, 5],
    [3, 1, 4, 18],
  ]);
}
