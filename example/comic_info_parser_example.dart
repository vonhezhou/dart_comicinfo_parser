import 'dart:io';

import 'package:comic_info_parser/comic_info_parser.dart';

void main() {
  final comicInfoFilePath = Platform.script
      .resolve('test_comic_info.xml')
      .toFilePath();
  print(comicInfoFilePath);

  final comicInfoFile = File(comicInfoFilePath);
  final xml = comicInfoFile.readAsStringSync();
  final info = XmlComicInfo.fromXmlString(xml);
  print(info);
  print(info.toXmlString());

  final infoWithDefaults = info.withDefaultValues();
  print(infoWithDefaults.toXmlString());
}
