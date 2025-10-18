<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

A pure dart package for parsing [ComicInfo.xml](https://github.com/anansi-project/comicinfo) file.

## Features

- ComicInfo.xml codec

## Usage

```dart
import 'package:comic_info_parser/comic_info_parser.dart';
import 'package:comic_info_parser/comic_info_parser.dart';

void main() {
  final xml = '''
  <ComicInfo>
  <Title>My awsome comic</Title>
  <Writer>Foo bar</Writer>
  <LanguageISO>en</LanguageISO>
  <Pages>
    <Page Image="1" Bookmark="chapter 1"/>
  </Pages>
  </ComicInfo>
  ''';

  final info = XmlComicInfo.fromXmlString(xml);
  print(info);
  print(info.toXmlString(info));
}
```
