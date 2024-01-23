class WordCounter {
  static Map<String, int> countWords(List<String> words) {
    Map<String, int> wordCountMap = {};

    for (String word in words) {
      String lowercaseWord = word.toLowerCase();
      wordCountMap[lowercaseWord] = (wordCountMap[lowercaseWord] ?? 0) + 1;
    }

    return wordCountMap;
  }
}

//Пример использования

// void main() {
//   List<String> wordsCollection = [
//     'apple', 'orange', 'apple', 'banana', 'orange', 'apple', 'grape', 'pear'
//   ];

//   Map<String, int> wordCountResult = WordCounter.countWords(wordsCollection);

//   print("Слова и их количество в коллекции:");
//   wordCountResult.forEach((word, count) {
//     print("$word: $count");
//   });
// }
