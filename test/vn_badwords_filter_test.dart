import 'package:vn_badwords_filter/vn_badwords_filter.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    test('First Test', () {
      expect(VNBadwordsFilter.isProfane("hello"), isFalse);
      expect(VNBadwordsFilter.isProfane("vcl"), isTrue);
      expect(
        VNBadwordsFilter.clean("hello vcl"),
        equals(
          "hello ***",
        ),
      );
    });
  });
}
