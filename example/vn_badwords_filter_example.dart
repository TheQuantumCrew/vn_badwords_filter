import 'package:vn_badwords_filter/vn_badwords_filter.dart';

void main() {
  print(VNBadwordsFilter.isProfane("hello")); // false
  print(VNBadwordsFilter.isProfane("vcl")); // true
  print(VNBadwordsFilter.clean("hello vcl")); // hello ***
}
