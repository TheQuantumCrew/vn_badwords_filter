## Special thanks

Special thanks to everyone in [this repository](https://github.com/Eris-182/vn-badwords) repository for badwords list

## Features

This package is developed to filter Bad Words in Vietnames 🇻🇳🇻🇳
// Thư viện này dùng để lọc mấy từ bậy bạ chửi tục trong Tiếng Việt

## Getting started

#### Use command

```bash
dart pub add vn_badwords_filter
```

#### Or add specific version to ```pubspec.yaml``` file
```bash
dependencies:
    vn_badwords_filter: 1.0.0
```

Then run ```pub get```
```bash
flutter pub get
```

## Usage

Support clean and check function

```dart
  print(VNBadwordsFilter.isProfane("hello")); // false
  print(VNBadwordsFilter.isProfane("vcl")); // true
  print(VNBadwordsFilter.clean("hello vcl")); // hello ***
```

## Road map
- Add more bad words
- Support Multi-languages
