// Copyright 2019 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'package:nepali_utils/src/nepali_unicode_to_english.dart';

void main(List<String> arguments) {
  heading('English Unicode');
  print(
    NepaliUnicodeToEnglish.convert(
      'स​यौं थुँगा फूलका हामी, एउटै माला नेपाली\nसार्वभौम भै फैलिएका, मेची-महाकाली',
    ),
  );
  //स​यौं थुँगा फूलका हामी, एउटै माला नेपाली
}

void heading(String text) {
  var starLine = '', padString = '';
  var padding = (40 - text.length) ~/ 2;
  for (var i = 0; i < 40; i++) {
    starLine += '*';
  }
  for (var i = 0; i < padding; i++) {
    padString += ' ';
  }
  print(starLine);
  print(padString + text + padString);
  print(starLine);
}
