import 'dart:math';

enum UnicodeFont {
  one,
  two,
  three,
  four,
  five,
  six,
  seven,
  eight,
  nine,
  ten,
  eleven,
  twelve,
  thirteen,
  fourteen,
  fifteen,
  sixteen,
  seventeen,
  eighteen,
  nineteen,
  twenty,
  normal,
  serifBold,
  serifItalic,
  serifBoldItalic,
  sans,
  sansBold,
  sansItalic,
  sansBoldItalic,
  script,
  scriptBold,
  fraktur,
  frakturBold,
  monospace,
  fullwidth,
  doublestruck,
  capitalized,
  circled,
  parenthesized,
  underlinedSingle,
  random
}

class UnicodeFontConverter {
  static String encode(
      final String text, final UnicodeFont font, final String symbol) {
    final buffer = StringBuffer();
    final from = _fonts[UnicodeFont.normal]!;
    final to = _fonts[font]!;
    for (var i = 0; i < text.length; i++) {
      final c = text[i];
      final index = from.indexOf(c);
      if (index == -1) {
        buffer.write(c);
      } else {
        buffer.write(to[index]);
      }
    }

    return '$symbol ${buffer.toString()} $symbol';
  }

  static UnicodeFont getFont(int hashcode) {
    final random = Random(hashcode);
    return UnicodeFont.values[random.nextInt(UnicodeFont.values.length)];
  }

  static const _fonts = <UnicodeFont, List<String>>{
    UnicodeFont.one: [
      '𝕒',
      '𝕓',
      '𝕔',
      '𝕕',
      '𝕖',
      '𝕗',
      '𝕘',
      '𝕙',
      '𝕚',
      '𝕛',
      '𝕜',
      '𝕝',
      '𝕞',
      '𝕟',
      '𝕠',
      '𝕡',
      '𝕢',
      '𝕣',
      '𝕤',
      '𝕥',
      '𝕦',
      '𝕧',
      '𝕨',
      '𝕩',
      '𝕪',
      '𝕫',
      '𝔸',
      '𝔹',
      'ℂ',
      '𝔻',
      '𝔼',
      '𝔽',
      '𝔾',
      'ℍ',
      '𝕀',
      '𝕁',
      '𝕂',
      '𝕃',
      '𝕄',
      'ℕ',
      '𝕆',
      'ℙ',
      'ℚ',
      'ℝ',
      '𝕊',
      '𝕋',
      '𝕌',
      '𝕍',
      '𝕎',
      '𝕏',
      '𝕐',
      'ℤ',
      '𝟘',
      '𝟙',
      '𝟚',
      '𝟛',
      '𝟜',
      '𝟝',
      '𝟞',
      '𝟟',
      '𝟠',
      '𝟡',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.two: [
      'ᴀ',
      'ʙ',
      'ᴄ',
      'ᴅ',
      'ᴇ',
      'ꜰ',
      'ɢ',
      'ʜ',
      'ɪ',
      'ᴊ',
      'ᴋ',
      'ʟ',
      'ᴍ',
      'ɴ',
      'ᴏ',
      'ᴘ',
      'Q',
      'ʀ',
      'ꜱ',
      'ᴛ',
      'ᴜ',
      'ᴠ',
      'ᴡ',
      'x',
      'ʏ',
      'ᴢ',
      'ᴀ',
      'ʙ',
      'ᴄ',
      'ᴅ',
      'ᴇ',
      'ꜰ',
      'ɢ',
      'ʜ',
      'ɪ',
      'ᴊ',
      'ᴋ',
      'ʟ',
      'ᴍ',
      'ɴ',
      'ᴏ',
      'ᴘ',
      'Q',
      'ʀ',
      'ꜱ',
      'ᴛ',
      'ᴜ',
      'ᴠ',
      'ᴡ',
      'x',
      'ʏ',
      'ᴢ',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.three: [
      '𝓪',
      '𝓫',
      '𝓬',
      '𝓭',
      '𝓮',
      '𝓯',
      '𝓰',
      '𝓱',
      '𝓲',
      '𝓳',
      '𝓴',
      '𝓵',
      '𝓶',
      '𝓷',
      '𝓸',
      '𝓹',
      '𝓺',
      '𝓻',
      '𝓼',
      '𝓽',
      '𝓾',
      '𝓿',
      '𝔀',
      '𝔁',
      '𝔂',
      '𝔃',
      '𝓐',
      '𝓑',
      '𝓒',
      '𝓓',
      '𝓔',
      '𝓕',
      '𝓖',
      '𝓗',
      '𝓘',
      '𝓙',
      '𝓚',
      '𝓛',
      '𝓜',
      '𝓝',
      '𝓞',
      '𝓟',
      '𝓠',
      '𝓡',
      '𝓢',
      '𝓣',
      '𝓤',
      '𝓥',
      '𝓦',
      '𝓧',
      '𝓨',
      '𝓩',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.four: [
      'ǟ',
      'ɮ',
      'ƈ',
      'ɖ',
      'ɛ',
      'ʄ',
      'ɢ',
      'ɦ',
      'ɨ',
      'ʝ',
      'ӄ',
      'ʟ',
      'ʍ',
      'ռ',
      'օ',
      'ք',
      'զ',
      'ʀ',
      'ֆ',
      'ȶ',
      'ʊ',
      'ʋ',
      'ա',
      'Ӽ',
      'ʏ',
      'ʐ',
      'ǟ',
      'ɮ',
      'ƈ',
      'ɖ',
      'ɛ',
      'ʄ',
      'ɢ',
      'ɦ',
      'ɨ',
      'ʝ',
      'ӄ',
      'ʟ',
      'ʍ',
      'ռ',
      'օ',
      'ք',
      'զ',
      'ʀ',
      'ֆ',
      'ȶ',
      'ʊ',
      'ʋ',
      'ա',
      'Ӽ',
      'ʏ',
      'ʐ',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.five: [
      '🅰',
      '🅱',
      '🅲',
      '🅳',
      '🅴',
      '🅵',
      '🅶',
      '🅷',
      '🅸',
      '🅹',
      '🅺',
      '🅻',
      '🅼',
      '🅽',
      '🅾',
      '🅿',
      '🆀',
      '🆁',
      '🆂',
      '🆃',
      '🆄',
      '🆅',
      '🆆',
      '🆇',
      '🆈',
      '🆉',
      '🅰',
      '🅱',
      '🅲',
      '🅳',
      '🅴',
      '🅵',
      '🅶',
      '🅷',
      '🅸',
      '🅹',
      '🅺',
      '🅻',
      '🅼',
      '🅽',
      '🅾',
      '🅿',
      '🆀',
      '🆁',
      '🆂',
      '🆃',
      '🆄',
      '🆅',
      '🆆',
      '🆇',
      '🆈',
      '🆉',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.six: [
      '🄰',
      '🄱',
      '🄲',
      '🄳',
      '🄴',
      '🄵',
      '🄶',
      '🄷',
      '🄸',
      '🄹',
      '🄺',
      '🄻',
      '🄼',
      '🄽',
      '🄾',
      '🄿',
      '🅀',
      '🅁',
      '🅂',
      '🅃',
      '🅄',
      '🅅',
      '🅆',
      '🅇',
      '🅈',
      '🅉',
      '🄰',
      '🄱',
      '🄲',
      '🄳',
      '🄴',
      '🄵',
      '🄶',
      '🄷',
      '🄸',
      '🄹',
      '🄺',
      '🄻',
      '🄼',
      '🄽',
      '🄾',
      '🄿',
      '🅀',
      '🅁',
      '🅂',
      '🅃',
      '🅄',
      '🅅',
      '🅆',
      '🅇',
      '🅈',
      '🅉',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.seven: [
      'Д',
      'Б',
      'C',
      'D',
      'Ξ',
      'F',
      'G',
      'H',
      'I',
      'J',
      'Ҝ',
      'L',
      'M',
      'И',
      'Ф',
      'P',
      'Ǫ',
      'Я',
      'S',
      'Γ',
      'Ц',
      'V',
      'Щ',
      'Ж',
      'У',
      'Z',
      'Д',
      'Б',
      'C',
      'D',
      'Ξ',
      'F',
      'G',
      'H',
      'I',
      'J',
      'Ҝ',
      'L',
      'M',
      'И',
      'Ф',
      'P',
      'Ǫ',
      'Я',
      'S',
      'Γ',
      'Ц',
      'V',
      'Щ',
      'Ж',
      'У',
      'Z',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.eight: [
      '𝔞',
      '𝔟',
      '𝔠',
      '𝔡',
      '𝔢',
      '𝔣',
      '𝔤',
      '𝔥',
      '𝔦',
      '𝔧',
      '𝔨',
      '𝔩',
      '𝔪',
      '𝔫',
      '𝔬',
      '𝔭',
      '𝔮',
      '𝔯',
      '𝔰',
      '𝔱',
      '𝔲',
      '𝔳',
      '𝔴',
      '𝔵',
      '𝔶',
      '𝔷',
      '𝔄',
      '𝔅',
      'ℭ',
      '𝔇',
      '𝔈',
      '𝔉',
      '𝔊',
      'ℌ',
      'ℑ',
      '𝔍',
      '𝔎',
      '𝔏',
      '𝔐',
      '𝔑',
      '𝔒',
      '𝔓',
      '𝔔',
      'ℜ',
      '𝔖',
      '𝔗',
      '𝔘',
      '𝔙',
      '𝔚',
      '𝔛',
      '𝔜',
      'ℨ',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.nine: [
      '𝖆',
      '𝖇',
      '𝖈',
      '𝖉',
      '𝖊',
      '𝖋',
      '𝖌',
      '𝖍',
      '𝖎',
      '𝖏',
      '𝖐',
      '𝖑',
      '𝖒',
      '𝖓',
      '𝖔',
      '𝖕',
      '𝖖',
      '𝖗',
      '𝖘',
      '𝖙',
      '𝖚',
      '𝖛',
      '𝖜',
      '𝖝',
      '𝖞',
      '𝖟',
      '𝕬',
      '𝕭',
      '𝕮',
      '𝕯',
      '𝕰',
      '𝕱',
      '𝕲',
      '𝕳',
      '𝕴',
      '𝕵',
      '𝕶',
      '𝕷',
      '𝕸',
      '𝕹',
      '𝕺',
      '𝕻',
      '𝕼',
      '𝕽',
      '𝕾',
      '𝕿',
      '𝖀',
      '𝖁',
      '𝖂',
      '𝖃',
      '𝖄',
      '𝖅',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.ten: [
      '𝓪',
      '𝓫',
      '𝓬',
      '𝓭',
      '𝓮',
      '𝓯',
      '𝓰',
      '𝓱',
      '𝓲',
      '𝓳',
      '𝓴',
      '𝓵',
      '𝓶',
      '𝓷',
      '𝓸',
      '𝓹',
      '𝓺',
      '𝓻',
      '𝓼',
      '𝓽',
      '𝓾',
      '𝓿',
      '𝔀',
      '𝔁',
      '𝔂',
      '𝔃',
      '𝓐',
      '𝓑',
      '𝓒',
      '𝓓',
      '𝓔',
      '𝓕',
      '𝓖',
      '𝓗',
      '𝓘',
      '𝓙',
      '𝓚',
      '𝓛',
      '𝓜',
      '𝓝',
      '𝓞',
      '𝓟',
      '𝓠',
      '𝓡',
      '𝓢',
      '𝓣',
      '𝓤',
      '𝓥',
      '𝓦',
      '𝓧',
      '𝓨',
      '𝓩',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.eleven: [
      'ᗩ',
      'ᗷ',
      'ᑕ',
      'ᗪ',
      'ᗴ',
      'ᖴ',
      'Ǥ',
      'ᕼ',
      'Ꭵ',
      'ᒎ',
      'ᛕ',
      'ᒪ',
      'ᗰ',
      'ᑎ',
      'ᗝ',
      'ᑭ',
      'Ɋ',
      'ᖇ',
      'ᔕ',
      '丅',
      'ᑌ',
      'ᐯ',
      'ᗯ',
      '᙭',
      'Ƴ',
      '乙',
      'ᗩ',
      'ᗷ',
      'ᑕ',
      'ᗪ',
      'ᗴ',
      'ᖴ',
      'Ǥ',
      'ᕼ',
      'Ꭵ',
      'ᒎ',
      'ᛕ',
      'ᒪ',
      'ᗰ',
      'ᑎ',
      'ᗝ',
      'ᑭ',
      'Ɋ',
      'ᖇ',
      'ᔕ',
      '丅',
      'ᑌ',
      'ᐯ',
      'ᗯ',
      '᙭',
      'Ƴ',
      '乙',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.twelve: [
      'ɐ',
      'q',
      'ɔ',
      'p',
      'ǝ',
      'ɟ',
      'ƃ',
      'ɥ',
      'ᴉ',
      'ɾ',
      'ʞ',
      'l',
      'ɯ',
      'u',
      'o',
      'd',
      'b',
      'ɹ',
      's',
      'ʇ',
      'n',
      'ʌ',
      'ʍ',
      'x',
      'ʎ',
      'z',
      'ɐ',
      'q',
      'ɔ',
      'p',
      'ǝ',
      'ɟ',
      'ƃ',
      'ɥ',
      'ᴉ',
      'ɾ',
      'ʞ',
      'l',
      'ɯ',
      'u',
      'o',
      'd',
      'b',
      'ɹ',
      's',
      'ʇ',
      'n',
      'ʌ',
      'ʍ',
      'x',
      'ʎ',
      'z',
      '0',
      'Ɩ',
      'ᄅ',
      'Ɛ',
      'ㄣ',
      'ϛ',
      '9',
      'ㄥ',
      '8',
      '6',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.thirteen: [
      'ɒ',
      'd',
      'ɔ',
      'b',
      'ɘ',
      'Ꮈ',
      'ǫ',
      'ʜ',
      'i',
      'ꞁ',
      'ʞ',
      '|',
      'm',
      'ᴎ',
      'o',
      'q',
      'p',
      'ɿ',
      'ꙅ',
      'ƚ',
      'u',
      'v',
      'w',
      'x',
      'ʏ',
      'ƹ',
      'A',
      'ᙠ',
      'Ɔ',
      'ᗡ',
      'Ǝ',
      'ꟻ',
      'Ꭾ',
      'H',
      'I',
      'Ⴑ',
      '⋊',
      '⅃',
      'M',
      'Ͷ',
      'O',
      'ꟼ',
      'Ọ',
      'Я',
      'Ꙅ',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Ƹ',
      '0',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '8',
      '9',
      '!',
      '⸮',
      '.',
      ',',
      '"'
          "'"
    ],
    UnicodeFont.fourteen: [
      '卂',
      '乃',
      '匚',
      'ᗪ',
      '乇',
      '千',
      'Ꮆ',
      '卄',
      '丨',
      'ﾌ',
      'Ҝ',
      'ㄥ',
      '爪',
      '几',
      'ㄖ',
      '卩',
      'Ɋ',
      '尺',
      '丂',
      'ㄒ',
      'ㄩ',
      'ᐯ',
      '山',
      '乂',
      'ㄚ',
      '乙',
      '卂',
      '乃',
      '匚',
      'ᗪ',
      '乇',
      '千',
      'Ꮆ',
      '卄',
      '丨',
      'ﾌ',
      'Ҝ',
      'ㄥ',
      '爪',
      '几',
      'ㄖ',
      '卩',
      'Ɋ',
      '尺',
      '丂',
      'ㄒ',
      'ㄩ',
      'ᐯ',
      '山',
      '乂',
      'ㄚ',
      '乙',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.fifteen: [
      'ﾑ',
      '乃',
      'ᄃ',
      'り',
      '乇',
      'ｷ',
      'ム',
      'ん',
      'ﾉ',
      'ﾌ',
      'ズ',
      'ﾚ',
      'ﾶ',
      '刀',
      'の',
      'ｱ',
      'ゐ',
      '尺',
      '丂',
      'ｲ',
      'ひ',
      '√',
      'W',
      'ﾒ',
      'ﾘ',
      '乙',
      'ﾑ',
      '乃',
      'ᄃ',
      'り',
      '乇',
      'ｷ',
      'ム',
      'ん',
      'ﾉ',
      'ﾌ',
      'ズ',
      'ﾚ',
      'ﾶ',
      '刀',
      'の',
      'ｱ',
      'ゐ',
      '尺',
      '丂',
      'ｲ',
      'ひ',
      '√',
      'W',
      'ﾒ',
      'ﾘ',
      '乙',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.sixteen: [
      'ꋫ',
      'ꃃ',
      'ꏸ',
      'ꁕ',
      'ꍟ',
      'ꄘ',
      'ꁍ',
      'ꑛ',
      'ꂑ',
      'ꀭ',
      'ꀗ',
      '꒒',
      'ꁒ',
      'ꁹ',
      'ꆂ',
      'ꉣ',
      'ꁸ',
      '꒓',
      'ꌚ',
      '꓅',
      'ꐇ',
      'ꏝ',
      'ꅐ',
      'ꇓ',
      'ꐟ',
      'ꁴ',
      'ꋫ',
      'ꃃ',
      'ꏸ',
      'ꁕ',
      'ꍟ',
      'ꄘ',
      'ꁍ',
      'ꑛ',
      'ꂑ',
      'ꀭ',
      'ꀗ',
      '꒒',
      'ꁒ',
      'ꁹ',
      'ꆂ',
      'ꉣ',
      'ꁸ',
      '꒓',
      'ꌚ',
      '꓅',
      'ꐇ',
      'ꏝ',
      'ꅐ',
      'ꇓ',
      'ꐟ',
      'ꁴ',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.seventeen: [
      'ꍏ',
      'ꌃ',
      'ꉓ',
      'ꀸ',
      'ꍟ',
      'ꎇ',
      'ꁅ',
      'ꃅ',
      'ꀤ',
      'ꀭ',
      'ꀘ',
      '꒒',
      'ꂵ',
      'ꈤ',
      'ꂦ',
      'ꉣ',
      'ꆰ',
      'ꋪ',
      'ꌗ',
      '꓄',
      'ꀎ',
      'ꃴ',
      'ꅏ',
      'ꊼ',
      'ꌩ',
      'ꁴ',
      'ꍏ',
      'ꌃ',
      'ꉓ',
      'ꀸ',
      'ꍟ',
      'ꎇ',
      'ꁅ',
      'ꃅ',
      'ꀤ',
      'ꀭ',
      'ꀘ',
      '꒒',
      'ꂵ',
      'ꈤ',
      'ꂦ',
      'ꉣ',
      'ꆰ',
      'ꋪ',
      'ꌗ',
      '꓄',
      'ꀎ',
      'ꃴ',
      'ꅏ',
      'ꊼ',
      'ꌩ',
      'ꁴ',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.eighteen: [
      'ᵃ',
      'ᵇ',
      'ᶜ',
      'ᵈ',
      'ᵉ',
      'ᶠ',
      'ᵍ',
      'ʰ',
      'ⁱ',
      'ʲ',
      'ᵏ',
      'ˡ',
      'ᵐ',
      'ⁿ',
      'ᵒ',
      'ᵖ',
      'q',
      'ʳ',
      'ˢ',
      'ᵗ',
      'ᵘ',
      'ᵛ',
      'ʷ',
      'ˣ',
      'ʸ',
      'ᶻ',
      'ᴬ',
      'ᴮ',
      'ᶜ',
      'ᴰ',
      'ᴱ',
      'ᶠ',
      'ᴳ',
      'ᴴ',
      'ᴵ',
      'ᴶ',
      'ᴷ',
      'ᴸ',
      'ᴹ',
      'ᴺ',
      'ᴼ',
      'ᴾ',
      'Q',
      'ᴿ',
      'ˢ',
      'ᵀ',
      'ᵁ',
      'ⱽ',
      'ᵂ',
      'ˣ',
      'ʸ',
      'ᶻ',
      '⁰',
      '¹',
      '²',
      '³',
      '⁴',
      '⁵',
      '⁶',
      '⁷',
      '⁸',
      '⁹',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.nineteen: [
      'ₐ',
      '𝚋',
      '𝚌',
      '𝚍',
      'ₑ',
      'f',
      'g',
      '𝓱',
      'ᵢ',
      'ⱼ',
      '𝓴',
      'ᄂ',
      'ᗰ',
      '𝚗',
      'ₒ',
      '𝐩',
      'q',
      'ᵣ',
      '𝘴',
      '𝚝',
      'ᵤ',
      'ᵥ',
      'w',
      'ₓ',
      'y',
      'z',
      'ₐ',
      'B',
      'C',
      'D',
      'ₑ',
      'F',
      'G',
      'H',
      'ᵢ',
      'ⱼ',
      'K',
      'L',
      'M',
      'N',
      'ₒ',
      'P',
      'Q',
      'ᵣ',
      'S',
      'T',
      'ᵤ',
      'ᵥ',
      'W',
      'ₓ',
      'Y',
      'Z',
      '₀',
      '₁',
      '₂',
      '₃',
      '₄',
      '₅',
      '₆',
      '₇',
      '₈',
      '₉',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.twenty: [
      '𝚊̷',
      '𝚋̷',
      '𝚌̷',
      '𝚍̷',
      '𝚎̷',
      '𝚏̷',
      '𝚐̷',
      '𝚑̷',
      '𝚒̷',
      '𝚓̷',
      '𝚔̷',
      '𝚕̷',
      '𝚖̷',
      '𝚗̷',
      '𝚘̷',
      '𝚙̷',
      '𝚚̷',
      '𝚛̷',
      '𝚜̷',
      '𝚝̷',
      '𝚞̷',
      '𝚟̷',
      '𝚠̷',
      '𝚡̷',
      '𝚢̷',
      '𝚣̷',
      '𝙰̷',
      '𝙱̷',
      '𝙲̷',
      '𝙳̷',
      '𝙴̷',
      '𝙵̷',
      '𝙶̷',
      '𝙷̷',
      '𝙸̷',
      '𝙹̷',
      '𝙺̷',
      '𝙻̷',
      '𝙼̷',
      '𝙽̷',
      '𝙾̷',
      '𝙿̷',
      '𝚀̷',
      '𝚁̷',
      '𝚂̷',
      '𝚃̷',
      '𝚄̷',
      '𝚅̷',
      '𝚆̷',
      '𝚇̷',
      '𝚈̷',
      '𝚉̷',
      '𝟶̷',
      '𝟷̷',
      '𝟸̷',
      '𝟹̷',
      '𝟺̷',
      '𝟻̷',
      '𝟼̷',
      '𝟽̷',
      '𝟾̷',
      '𝟿̷',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.normal: [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z',
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.serifBold: [
      '𝐚',
      '𝐛',
      '𝐜',
      '𝐝',
      '𝐞',
      '𝐟',
      '𝐠',
      '𝐡',
      '𝐢',
      '𝐣',
      '𝐤',
      '𝐥',
      '𝐦',
      '𝐧',
      '𝐨',
      '𝐩',
      '𝐪',
      '𝐫',
      '𝐬',
      '𝐭',
      '𝐮',
      '𝐯',
      '𝐰',
      '𝐱',
      '𝐲',
      '𝐳',
      '𝐀',
      '𝐁',
      '𝐂',
      '𝐃',
      '𝐄',
      '𝐅',
      '𝐆',
      '𝐇',
      '𝐈',
      '𝐉',
      '𝐊',
      '𝐋',
      '𝐌',
      '𝐍',
      '𝐎',
      '𝐏',
      '𝐐',
      '𝐑',
      '𝐒',
      '𝐓',
      '𝐔',
      '𝐕',
      '𝐖',
      '𝐗',
      '𝐘',
      '𝐙',
      '𝟎',
      '𝟏',
      '𝟐',
      '𝟑',
      '𝟒',
      '𝟓',
      '𝟔',
      '𝟕',
      '𝟖',
      '𝟗',
      '❗',
      '❓',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.serifItalic: [
      '𝑎',
      '𝑏',
      '𝑐',
      '𝑑',
      '𝑒',
      '𝑓',
      '𝑔',
      'ℎ',
      '𝑖',
      '𝑗',
      '𝑘',
      '𝑙',
      '𝑚',
      '𝑛',
      '𝑜',
      '𝑝',
      '𝑞',
      '𝑟',
      '𝑠',
      '𝑡',
      '𝑢',
      '𝑣',
      '𝑤',
      '𝑥',
      '𝑦',
      '𝑧',
      '𝐴',
      '𝐵',
      '𝐶',
      '𝐷',
      '𝐸',
      '𝐹',
      '𝐺',
      '𝐻',
      '𝐼',
      '𝐽',
      '𝐾',
      '𝐿',
      '𝑀',
      '𝑁',
      '𝑂',
      '𝑃',
      '𝑄',
      '𝑅',
      '𝑆',
      '𝑇',
      '𝑈',
      '𝑉',
      '𝑊',
      '𝑋',
      '𝑌',
      '𝑍',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.serifBoldItalic: [
      '𝒂',
      '𝒃',
      '𝒄',
      '𝒅',
      '𝒆',
      '𝒇',
      '𝒈',
      '𝒉',
      '𝒊',
      '𝒋',
      '𝒌',
      '𝒍',
      '𝒎',
      '𝒏',
      '𝒐',
      '𝒑',
      '𝒒',
      '𝒓',
      '𝒔',
      '𝒕',
      '𝒖',
      '𝒗',
      '𝒘',
      '𝒙',
      '𝒚',
      '𝒛',
      '𝑨',
      '𝑩',
      '𝑪',
      '𝑫',
      '𝑬',
      '𝑭',
      '𝑮',
      '𝑯',
      '𝑰',
      '𝑱',
      '𝑲',
      '𝑳',
      '𝑴',
      '𝑵',
      '𝑶',
      '𝑷',
      '𝑸',
      '𝑹',
      '𝑺',
      '𝑻',
      '𝑼',
      '𝑽',
      '𝑾',
      '𝑿',
      '𝒀',
      '𝒁',
      '𝟎',
      '𝟏',
      '𝟐',
      '𝟑',
      '𝟒',
      '𝟓',
      '𝟔',
      '𝟕',
      '𝟖',
      '𝟗',
      '❗',
      '❓',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.sans: [
      '𝖺',
      '𝖻',
      '𝖼',
      '𝖽',
      '𝖾',
      '𝖿',
      '𝗀',
      '𝗁',
      '𝗂',
      '𝗃',
      '𝗄',
      '𝗅',
      '𝗆',
      '𝗇',
      '𝗈',
      '𝗉',
      '𝗊',
      '𝗋',
      '𝗌',
      '𝗍',
      '𝗎',
      '𝗏',
      '𝗐',
      '𝗑',
      '𝗒',
      '𝗓',
      '𝖠',
      '𝖡',
      '𝖢',
      '𝖣',
      '𝖤',
      '𝖥',
      '𝖦',
      '𝖧',
      '𝖨',
      '𝖩',
      '𝖪',
      '𝖫',
      '𝖬',
      '𝖭',
      '𝖮',
      '𝖯',
      '𝖰',
      '𝖱',
      '𝖲',
      '𝖳',
      '𝖴',
      '𝖵',
      '𝖶',
      '𝖷',
      '𝖸',
      '𝖹',
      '𝟢',
      '𝟣',
      '𝟤',
      '𝟥',
      '𝟦',
      '𝟧',
      '𝟨',
      '𝟩',
      '𝟪',
      '𝟫',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.sansBold: [
      '𝗮',
      '𝗯',
      '𝗰',
      '𝗱',
      '𝗲',
      '𝗳',
      '𝗴',
      '𝗵',
      '𝗶',
      '𝗷',
      '𝗸',
      '𝗹',
      '𝗺',
      '𝗻',
      '𝗼',
      '𝗽',
      '𝗾',
      '𝗿',
      '𝘀',
      '𝘁',
      '𝘂',
      '𝘃',
      '𝘄',
      '𝘅',
      '𝘆',
      '𝘇',
      '𝗔',
      '𝗕',
      '𝗖',
      '𝗗',
      '𝗘',
      '𝗙',
      '𝗚',
      '𝗛',
      '𝗜',
      '𝗝',
      '𝗞',
      '𝗟',
      '𝗠',
      '𝗡',
      '𝗢',
      '𝗣',
      '𝗤',
      '𝗥',
      '𝗦',
      '𝗧',
      '𝗨',
      '𝗩',
      '𝗪',
      '𝗫',
      '𝗬',
      '𝗭',
      '𝟬',
      '𝟭',
      '𝟮',
      '𝟯',
      '𝟰',
      '𝟱',
      '𝟲',
      '𝟳',
      '𝟴',
      '𝟵',
      '❗',
      '❓',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.sansItalic: [
      '𝘢',
      '𝘣',
      '𝘤',
      '𝘥',
      '𝘦',
      '𝘧',
      '𝘨',
      '𝘩',
      '𝘪',
      '𝘫',
      '𝘬',
      '𝘭',
      '𝘮',
      '𝘯',
      '𝘰',
      '𝘱',
      '𝘲',
      '𝘳',
      '𝘴',
      '𝘵',
      '𝘶',
      '𝘷',
      '𝘸',
      '𝘹',
      '𝘺',
      '𝘻',
      '𝘈',
      '𝘉',
      '𝘊',
      '𝘋',
      '𝘌',
      '𝘍',
      '𝘎',
      '𝘏',
      '𝘐',
      '𝘑',
      '𝘒',
      '𝘓',
      '𝘔',
      '𝘕',
      '𝘖',
      '𝘗',
      '𝘘',
      '𝘙',
      '𝘚',
      '𝘛',
      '𝘜',
      '𝘝',
      '𝘞',
      '𝘟',
      '𝘠',
      '𝘡',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.sansBoldItalic: [
      '𝙖',
      '𝙗',
      '𝙘',
      '𝙙',
      '𝙚',
      '𝙛',
      '𝙜',
      '𝙝',
      '𝙞',
      '𝙟',
      '𝙠',
      '𝙡',
      '𝙢',
      '𝙣',
      '𝙤',
      '𝙥',
      '𝙦',
      '𝙧',
      '𝙨',
      '𝙩',
      '𝙪',
      '𝙫',
      '𝙬',
      '𝙭',
      '𝙮',
      '𝙯',
      '𝘼',
      '𝘽',
      '𝘾',
      '𝘿',
      '𝙀',
      '𝙁',
      '𝙂',
      '𝙃',
      '𝙄',
      '𝙅',
      '𝙆',
      '𝙇',
      '𝙈',
      '𝙉',
      '𝙊',
      '𝙋',
      '𝙌',
      '𝙍',
      '𝙎',
      '𝙏',
      '𝙐',
      '𝙑',
      '𝙒',
      '𝙓',
      '𝙔',
      '𝙕',
      '𝟎',
      '𝟏',
      '𝟐',
      '𝟑',
      '𝟒',
      '𝟓',
      '𝟔',
      '𝟕',
      '𝟖',
      '𝟗',
      '❗',
      '❓',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.script: [
      '𝒶',
      '𝒷',
      '𝒸',
      '𝒹',
      'ℯ',
      '𝒻',
      'ℊ',
      '𝒽',
      '𝒾',
      '𝒿',
      '𝓀',
      '𝓁',
      '𝓂',
      '𝓃',
      'ℴ',
      '𝓅',
      '𝓆',
      '𝓇',
      '𝓈',
      '𝓉',
      '𝓊',
      '𝓋',
      '𝓌',
      '𝓍',
      '𝓎',
      '𝓏',
      '𝒜',
      'ℬ',
      '𝒞',
      '𝒟',
      'ℰ',
      'ℱ',
      '𝒢',
      'ℋ',
      'ℐ',
      '𝒥',
      '𝒦',
      'ℒ',
      'ℳ',
      '𝒩',
      '𝒪',
      '𝒫',
      '𝒬',
      'ℛ',
      '𝒮',
      '𝒯',
      '𝒰',
      '𝒱',
      '𝒲',
      '𝒳',
      '𝒴',
      '𝒵',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.scriptBold: [
      '𝓪',
      '𝓫',
      '𝓬',
      '𝓭',
      '𝓮',
      '𝓯',
      '𝓰',
      '𝓱',
      '𝓲',
      '𝓳',
      '𝓴',
      '𝓵',
      '𝓶',
      '𝓷',
      '𝓸',
      '𝓹',
      '𝓺',
      '𝓻',
      '𝓼',
      '𝓽',
      '𝓾',
      '𝓿',
      '𝔀',
      '𝔁',
      '𝔂',
      '𝔃',
      '𝓐',
      '𝓑',
      '𝓒',
      '𝓓',
      '𝓔',
      '𝓕',
      '𝓖',
      '𝓗',
      '𝓘',
      '𝓙',
      '𝓚',
      '𝓛',
      '𝓜',
      '𝓝',
      '𝓞',
      '𝓟',
      '𝓠',
      '𝓡',
      '𝓢',
      '𝓣',
      '𝓤',
      '𝓥',
      '𝓦',
      '𝓧',
      '𝓨',
      '𝓩',
      '𝟎',
      '𝟏',
      '𝟐',
      '𝟑',
      '𝟒',
      '𝟓',
      '𝟔',
      '𝟕',
      '𝟖',
      '𝟗',
      '❗',
      '❓',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.fraktur: [
      '𝔞',
      '𝔟',
      '𝔠',
      '𝔡',
      '𝔢',
      '𝔣',
      '𝔤',
      '𝔥',
      '𝔦',
      '𝔧',
      '𝔨',
      '𝔩',
      '𝔪',
      '𝔫',
      '𝔬',
      '𝔭',
      '𝔮',
      '𝔯',
      '𝔰',
      '𝔱',
      '𝔲',
      '𝔳',
      '𝔴',
      '𝔵',
      '𝔶',
      '𝔷',
      '𝔄',
      '𝔅',
      'ℭ',
      '𝔇',
      '𝔈',
      '𝔉',
      '𝔊',
      'ℌ',
      'ℑ',
      '𝔍',
      '𝔎',
      '𝔏',
      '𝔐',
      '𝔑',
      '𝔒',
      '𝔓',
      '𝔔',
      'ℜ',
      '𝔖',
      '𝔗',
      '𝔘',
      '𝔙',
      '𝔚',
      '𝔛',
      '𝔜',
      'ℨ',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.frakturBold: [
      '𝖆',
      '𝖇',
      '𝖈',
      '𝖉',
      '𝖊',
      '𝖋',
      '𝖌',
      '𝖍',
      '𝖎',
      '𝖏',
      '𝖐',
      '𝖑',
      '𝖒',
      '𝖓',
      '𝖔',
      '𝖕',
      '𝖖',
      '𝖗',
      '𝖘',
      '𝖙',
      '𝖚',
      '𝖛',
      '𝖜',
      '𝖝',
      '𝖞',
      '𝖟',
      '𝕬',
      '𝕭',
      '𝕮',
      '𝕯',
      '𝕰',
      '𝕱',
      '𝕲',
      '𝕳',
      '𝕴',
      '𝕵',
      '𝕶',
      '𝕷',
      '𝕸',
      '𝕹',
      '𝕺',
      '𝕻',
      '𝕼',
      '𝕽',
      '𝕾',
      '𝕿',
      '𝖀',
      '𝖁',
      '𝖂',
      '𝖃',
      '𝖄',
      '𝖅',
      '𝟎',
      '𝟏',
      '𝟐',
      '𝟑',
      '𝟒',
      '𝟓',
      '𝟔',
      '𝟕',
      '𝟖',
      '𝟗',
      '❗',
      '❓',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.monospace: [
      '𝚊',
      '𝚋',
      '𝚌',
      '𝚍',
      '𝚎',
      '𝚏',
      '𝚐',
      '𝚑',
      '𝚒',
      '𝚓',
      '𝚔',
      '𝚕',
      '𝚖',
      '𝚗',
      '𝚘',
      '𝚙',
      '𝚚',
      '𝚛',
      '𝚜',
      '𝚝',
      '𝚞',
      '𝚟',
      '𝚠',
      '𝚡',
      '𝚢',
      '𝚣',
      '𝙰',
      '𝙱',
      '𝙲',
      '𝙳',
      '𝙴',
      '𝙵',
      '𝙶',
      '𝙷',
      '𝙸',
      '𝙹',
      '𝙺',
      '𝙻',
      '𝙼',
      '𝙽',
      '𝙾',
      '𝙿',
      '𝚀',
      '𝚁',
      '𝚂',
      '𝚃',
      '𝚄',
      '𝚅',
      '𝚆',
      '𝚇',
      '𝚈',
      '𝚉',
      '𝟶',
      '𝟷',
      '𝟸',
      '𝟹',
      '𝟺',
      '𝟻',
      '𝟼',
      '𝟽',
      '𝟾',
      '𝟿',
      '！',
      '？',
      '．',
      '，',
      '"',
      '＇'
    ],
    UnicodeFont.fullwidth: [
      'ａ',
      'ｂ',
      'ｃ',
      'ｄ',
      'ｅ',
      'ｆ',
      'ｇ',
      'ｈ',
      'ｉ',
      'ｊ',
      'ｋ',
      'ｌ',
      'ｍ',
      'ｎ',
      'ｏ',
      'ｐ',
      'ｑ',
      'ｒ',
      'ｓ',
      'ｔ',
      'ｕ',
      'ｖ',
      'ｗ',
      'ｘ',
      'ｙ',
      'ｚ',
      'Ａ',
      'Ｂ',
      'Ｃ',
      'Ｄ',
      'Ｅ',
      'Ｆ',
      'Ｇ',
      'Ｈ',
      'Ｉ',
      'Ｊ',
      'Ｋ',
      'Ｌ',
      'Ｍ',
      'Ｎ',
      'Ｏ',
      'Ｐ',
      'Ｑ',
      'Ｒ',
      'Ｓ',
      'Ｔ',
      'Ｕ',
      'Ｖ',
      'Ｗ',
      'Ｘ',
      'Ｙ',
      'Ｚ',
      '０',
      '１',
      '２',
      '３',
      '４',
      '５',
      '６',
      '７',
      '８',
      '９',
      '！',
      '？',
      '．',
      '，',
      '"',
      '＇'
    ],
    UnicodeFont.doublestruck: [
      '𝕒',
      '𝕓',
      '𝕔',
      '𝕕',
      '𝕖',
      '𝕗',
      '𝕘',
      '𝕙',
      '𝕚',
      '𝕛',
      '𝕜',
      '𝕝',
      '𝕞',
      '𝕟',
      '𝕠',
      '𝕡',
      '𝕢',
      '𝕣',
      '𝕤',
      '𝕥',
      '𝕦',
      '𝕧',
      '𝕨',
      '𝕩',
      '𝕪',
      '𝕫',
      '𝔸',
      '𝔹',
      'ℂ',
      '𝔻',
      '𝔼',
      '𝔽',
      '𝔾',
      'ℍ',
      '𝕀',
      '𝕁',
      '𝕂',
      '𝕃',
      '𝕄',
      'ℕ',
      '𝕆',
      'ℙ',
      'ℚ',
      'ℝ',
      '𝕊',
      '𝕋',
      '𝕌',
      '𝕍',
      '𝕎',
      '𝕏',
      '𝕐',
      'ℤ',
      '𝟘',
      '𝟙',
      '𝟚',
      '𝟛',
      '𝟜',
      '𝟝',
      '𝟞',
      '𝟟',
      '𝟠',
      '𝟡',
      '❕',
      '❔',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.capitalized: [
      'ᴀ',
      'ʙ',
      'ᴄ',
      'ᴅ',
      'ᴇ',
      'ꜰ',
      'ɢ',
      'ʜ',
      'ɪ',
      'ᴊ',
      'ᴋ',
      'ʟ',
      'ᴍ',
      'ɴ',
      'ᴏ',
      'ᴘ',
      'q',
      'ʀ',
      'ꜱ',
      'ᴛ',
      'ᴜ',
      'ᴠ',
      'ᴡ',
      'x',
      'ʏ',
      'ᴢ',
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '﹗',
      '﹖',
      '﹒',
      '﹐',
      '"',
      "'"
    ],
    UnicodeFont.circled: [
      'ⓐ',
      'ⓑ',
      'ⓒ',
      'ⓓ',
      'ⓔ',
      'ⓕ',
      'ⓖ',
      'ⓗ',
      'ⓘ',
      'ⓙ',
      'ⓚ',
      'ⓛ',
      'ⓜ',
      'ⓝ',
      'ⓞ',
      'ⓟ',
      'ⓠ',
      'ⓡ',
      'ⓢ',
      'ⓣ',
      'ⓤ',
      'ⓥ',
      'ⓦ',
      'ⓧ',
      'ⓨ',
      'ⓩ',
      'Ⓐ',
      'Ⓑ',
      'Ⓒ',
      'Ⓓ',
      'Ⓔ',
      'Ⓕ',
      'Ⓖ',
      'Ⓗ',
      'Ⓘ',
      'Ⓙ',
      'Ⓚ',
      'Ⓛ',
      'Ⓜ',
      'Ⓝ',
      'Ⓞ',
      'Ⓟ',
      'Ⓠ',
      'Ⓡ',
      'Ⓢ',
      'Ⓣ',
      'Ⓤ',
      'Ⓥ',
      'Ⓦ',
      'Ⓧ',
      'Ⓨ',
      'Ⓩ',
      '⓪',
      '①',
      '②',
      '③',
      '④',
      '⑤',
      '⑥',
      '⑦',
      '⑧',
      '⑨',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.parenthesized: [
      '⒜',
      '⒝',
      '⒞',
      '⒟',
      '⒠',
      '⒡',
      '⒢',
      '⒣',
      '⒤',
      '⒥',
      '⒦',
      '⒧',
      '⒨',
      '⒩',
      '⒪',
      '⒫',
      '⒬',
      '⒭',
      '⒮',
      '⒯',
      '⒰',
      '⒱',
      '⒲',
      '⒳',
      '⒴',
      '⒵',
      '🄐',
      '🄑',
      '🄒',
      '🄓',
      '🄔',
      '🄕',
      '🄖',
      '🄗',
      '🄘',
      '🄙',
      '🄚',
      '🄛',
      '🄜',
      '🄝',
      '🄞',
      '🄟',
      '🄠',
      '🄡',
      '🄢',
      '🄣',
      '🄤',
      '🄥',
      '🄦',
      '🄧',
      '🄨',
      '🄩',
      '⓿',
      '⑴',
      '⑵',
      '⑶',
      '⑷',
      '⑸',
      '⑹',
      '⑺',
      '⑻',
      '⑼',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.underlinedSingle: [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z',
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z',
      '0',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
    UnicodeFont.random: [
      '𝒶',
      '𝒷',
      '𝒸',
      '𝒹',
      '𝑒',
      '𝒻',
      '𝑔',
      '𝒽',
      '𝒾',
      '𝒿',
      '𝓀',
      '𝓁',
      '𝓂',
      '𝓃',
      '𝑜',
      '𝓅',
      '𝓆',
      '𝓇',
      '𝓈',
      '𝓉',
      '𝓊',
      '𝓋',
      '𝓌',
      '𝓍',
      '𝓎',
      '𝓏',
      '𝒜',
      '𝐵',
      '𝒞',
      '𝒟',
      '𝐸',
      '𝐹',
      '𝒢',
      '𝐻',
      '𝐼',
      '𝒥',
      '𝒦',
      '𝐿',
      '𝑀',
      '𝒩',
      '𝒪',
      '𝒫',
      '𝒬',
      '𝑅',
      '𝒮',
      '𝒯',
      '𝒰',
      '𝒱',
      '𝒲',
      '𝒳',
      '𝒴',
      '𝒵',
      '𝟢',
      '𝟣',
      '𝟤',
      '𝟥',
      '𝟦',
      '𝟧',
      '𝟨',
      '𝟩',
      '𝟪',
      '𝟫',
      '!',
      '?',
      '.',
      ',',
      '"',
      "'"
    ],
  };
}
