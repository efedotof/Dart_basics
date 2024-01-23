

class BinaryConverter {

  static String decimalToBinary(int decimalNumber) {
    if (decimalNumber == 0) {
      return '0';
    }
    String binaryResult = '';
    while (decimalNumber > 0) {
      int remainder = decimalNumber % 2;
      binaryResult = remainder.toString() + binaryResult;
      decimalNumber ~/= 2;
    }

    return binaryResult;
  }

  static int binaryToDecimal(String binaryNumber) {
    int decimalResult = 0;
    int length = binaryNumber.length;

    for (int i = 0; i < length; i++) {
      int digit = int.parse(binaryNumber[length - 1 - i]);
      decimalResult += digit * (1 << i);
    }

    return decimalResult;
  }
}


//Пример использования

// void main() {
  // int decimalNumber = 25;
  // String binaryRepresentation = BinaryConverter.decimalToBinary(decimalNumber);
  // log("Десятичное число $decimalNumber в двоичной системе: $binaryRepresentation");
  // String binaryNumber = "11001";
  // int decimalResult = BinaryConverter.binaryToDecimal(binaryNumber);
  // log("Двоичное число $binaryNumber в десятичной системе: $decimalResult");
// }
