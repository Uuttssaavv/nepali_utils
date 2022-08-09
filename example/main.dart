// Copyright 2019 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'package:nepali_utils/src/nepali_unicode_to_english.dart';

void main(List<String> arguments) {
  heading('English Unicode');
  print(
    NepaliUnicodeToEnglish.convert(
      'सयौं थुँगा। / फूलका हामी, एउटै माला नेपाली   अर्',
    ),
  );
  //स​यौं थुँगा फूलका हामी, एउटै माला नेपाली
}

final String x =
    '%u0915%u0916%u0917%u0918%u0919%u091A%u091B%u091C%u091D%u091E%u091F%u0920%u0921%u0922%u0923%u0924%u0925%u0926%u0927%u0928%u092A%u092B%u092C%u092D%u092E%u092F%u0930%u0932%u0935%u0936%u0937%u0938%u0939%u0915%u094D%u0937%u0924%u094D%u0930%u091C%u094D%u091E';
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
