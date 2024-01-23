class DigitExtractor {
  static List<int> extractDigits(String inputString) {
    final Map<String, int> wordToDigit = {
      'zero': 0,
      'one': 1,
      'two': 2,
      'three': 3,
      'four': 4,
      'five': 5,
      'six': 6,
      'seven': 7,
      'eight': 8,
      'nine': 9,
    };

    List<int> uniqueDigits = [];
    List<String> words = inputString.split(',').map((word) => word.trim()).toList();

    for (String word in words) {
      if (wordToDigit.containsKey(word)) {
        int? digit = wordToDigit[word];
        if (!uniqueDigits.contains(digit)) {
          if(digit != null){
            uniqueDigits.add(digit);
          }
        }
      }
    }

    return uniqueDigits;
  }
}

// Пример использования

// void main() {
//   String inputString = 'one, two, zero, zero, three, five';
//   List<int> extractedDigits = DigitExtractor.extractDigits(inputString);

//   print("Уникальные цифры в строке \"$inputString\": $extractedDigits");
// }
