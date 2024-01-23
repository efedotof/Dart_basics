import 'dart:developer';

class LinearEquationSolver {
  late List<List<double>> matrix;

  LinearEquationSolver(List<List<double>> coefficients) {
    matrix = List<List<double>>.from(coefficients);
  }

  void solveSystem() {
    int rows = matrix.length;
    int cols = matrix[0].length - 1;

    for (int k = 0; k < rows; k++) {
      if (matrix[k][k] == 0) {
        int swapRow = -1;
        for (int i = k + 1; i < rows; i++) {
          if (matrix[i][k] != 0) {
            swapRow = i;
            break;
          }
        }

        if (swapRow != -1) {
          List<double> temp = matrix[k];
          matrix[k] = matrix[swapRow];
          matrix[swapRow] = temp;
        } else {
          log('Система не имеет уникального решения.', name: 'Ответ');
          return;
        }
      }

      for (int i = k + 1; i < rows; i++) {
        double factor = matrix[i][k] / matrix[k][k];
        for (int j = k; j <= cols; j++) {
          matrix[i][j] -= factor * matrix[k][j];
        }
      }
    }

    List<double> solution = List<double>.filled(rows, 0.0);
    for (int i = rows - 1; i >= 0; i--) {
      solution[i] = matrix[i][cols];
      for (int j = i + 1; j < rows; j++) {
        solution[i] -= matrix[i][j] * solution[j];
      }
      solution[i] /= matrix[i][i];
    }

    log('Решение системы: $solution', name: 'Ответ');
  }
}

// void main() {
  // List<List<double>> coefficients = [
  //   [2, 1, 3, 10],
  //   [1, 2, 1, 5],
  //   [3, 1, 4, 18],
  // ];

  // LinearEquationSolver(coefficients).solveSystem();
// }
