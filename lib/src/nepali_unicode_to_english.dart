// Copyright 2020 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

/// Converts English literal (Roman Literals) into Nepali Unicode.
class NepaliUnicodeToEnglish {
  static String convert(String text, {bool live = false}) {
    var x = text.replaceAll('\u094D', '~').split('');
    var li = <String>[];
    for (var i = 0; i < x.length; i++) {
      if (i < x.length - 1 && x[i + 1] == '~') {
        li.add(map[x[i]].toString().replaceAll('a', ''));
      } else if (x[i] != '~') {
        li.add(map[x[i]] ?? x[i]);
      }
    }

    for (var i = 0; i < li.length; i++) {
      //
      if (map2[li[i]] != null) {
        li[i - 1] = li[i - 1].toString().replaceAll('a', '');
        li[i] = map2[li[i]];
      }
    }

    return li.join('').replaceAll(',', '');
  }
}

Map map = {
  //ka - gya
  '\u0915': 'ka',
  '\u0916': 'kha',
  '\u0917': 'ga',
  '\u0918': 'gha',
  '\u0919': 'na',
  '\u091A': 'cha',
  '\u091B': 'chha',
  '\u091C': 'ja',
  '\u091D': 'jha',
  '\u091E': 'ya',
  '\u091F': 'Ta',
  '\u0920': 'Tha',
  '\u0921': 'Da',
  '\u0922': 'Dha',
  '\u0923': 'na',
  '\u0924': 'ta',
  '\u0925': 'tha',
  '\u0926': 'da',
  '\u0927': 'dha',
  '\u0928': 'na',
  '\u092A': 'pa',
  '\u092B': 'pha',
  '\u092C': 'ba',
  '\u092D': 'bha',
  '\u092E': 'ma',
  '\u092F': 'ya',
  '\u0930': 'ra',
  '\u0932': 'la',
  '\u0935': 'wa',
  '\u0936': 'sha',
  '\u0937': 'sha',
  '\u0938': 'sa',
  '\u0939': 'ha',
  '\u0915\u094D\u0937': 'shya',
  '\u0924\u094D\u0930': 'tra',
  '\u091C\u094D\u091E': 'gya',
  // a - ahm
  '\u093E': 'a',
  '\u0905': 'a',
  '\u0906': 'aa',
  '\u0907': 'i',
  '\u0908': 'ee',
  '\u0909': 'u',
  '\u090A': 'oo',
  '\u090F': 'e',
  '\u0910': 'ai',
  '\u0913': 'o',
  '\u0914': 'au',
  '\u0935\u0902': 'am',
  '\u0935\u0903': 'ah',
  '\u0964': '.',
  //numbers
  '\u0966': '0',
  '\u0967': '1',
  '\u0968': '2',
  '\u0969': '3',
  '\u096a': '4',
  '\u096b': '5',
  '\u096c': '6',
  '\u096d': '7',
  '\u096e': '8',
  '\u096f': '9',
};
Map map2 = {
  '\u093F': 'i',
  '\u0940': 'ee',
  '\u0941': 'u',
  '\u0942': 'oo',
  '\u0947': 'e',
  '\u0948': 'ai',
  '\u094B': 'o',
  '\u094C': 'au',
  '\u0901': 'n', //chandrabindu
  '\u0902': 'n', //shreebindu
};
//कखगघङचछजझञटठडढणतथदधनपफबभमयरलवशषसहक्षत्रज्ञ
//अआइईउऊएऐओऔअंअः
         
        