// Copyright 2019 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'package:nepali_utils/src/nepali_unicode_to_english.dart';

void main(List<String> arguments) {
  heading('English Unicode');
  print(
    NepaliUnicodeToEnglish.convert('''
नेपाल देशको उन्नति अनि नेपाली जनताको समग्र प्रगति नेपाली कांग्रेसको मुल अभिष्ट हो|
 वीपी कोइरालाको विचार, कैयन सहिदको बलिदान, हजारौं योद्धाको समर्पण र लाखौं सदस्यको 
 अनवरत यात्रा हाम्रो त्यही अभिष्टमा केन्द्रित र लक्ष्यित छ|
'''),
  );
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
