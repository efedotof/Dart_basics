class NumberExtractor {

  static List<num> extractNumbers(String inputString) {
    List<num> numbers = [];
    List<String> words = inputString.split(' ');

    for (String word in words) {
      try {
        num number = num.parse(word);
        numbers.add(number);
      } catch (e) {
        // log(e.toString());
      }
    }

    return numbers;
  }
}

// void main() {
//   String inputString = "42 hello 3.14 world 7";
//   List<num> extractedNumbers = NumberExtractor.extractNumbers(inputString);
//   log("Числа в строке \"$inputString\": $extractedNumbers");
// }
