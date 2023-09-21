library bad_words;

import 'bad_words.dart';

/// This package will help you to filter bad words in Vietnamese
///
abstract class VNBadwordsFilter {
  /// This function will return true if your string contains bad word
  ///
  /// Example:
  /// ```dart
  /// final bool isProfane = VNBadwordsFilter.isProfane('This is a bad word');
  /// print(isProfane); // true
  /// ```
  static bool isProfane(String stringToTest) {
    final lowerCaseStringToTest = stringToTest.toLowerCase();
    return wordSet
        .where((word) => lowerCaseStringToTest.contains(word))
        .isNotEmpty;
  }

  /// This function will replace your bad word into * character with [replaceAll]
  ///
  /// Example:
  /// ```dart
  /// final String cleanedText = VNBadwordsFilter.clean('This is a bad word');
  /// print(cleanedText); // This is a *** word
  /// ```
  static String clean(String stringToObfuscate) {
    final listToTest = stringToObfuscate.split(' ');
    final clean = listToTest.map((e) {
      if (wordSet.contains(e.toLowerCase())) {
        return e.replaceAll(RegExp('.'), '*');
      }
      return e;
    });

    return clean.join(' ');
  }
}
