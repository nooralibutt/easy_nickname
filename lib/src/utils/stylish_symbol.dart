import "dart:math";

final _random = Random();

class StylishSymbol {
  static String randomSymbol(int hashcode) =>
      symbols[Random(hashcode).nextInt(symbols.length)];

  static const symbols = [
    '★',
    'ƒ',
    '¤',
    '฿',
    '₡៛',
    '₢',
    '₣',
    '₤',
    '₥',
    '₦',
    '₧',
    '₯',
    '₰',
    '₱',
    '₲',
    '₳',
    '₴',
    '￥',
    '௹',
    '৳',
    '৲',
    '₮',
    '¥',
    '£',
    '€',
    '🔯',
    '¢',
    '🌃',
    '✨',
    '💫',
    '🌟',
    '🌠',
    '⭐',
    '⍟',
    '☆',
    '✡',
    '✦',
    '✧',
    '✩',
    '✪',
    '✫',
    '✬',
    '✭',
    '✯',
    '✰',
    '⁂',
    '⁎⁑',
    '✢',
    '✣',
    '❁',
    '❂',
    '❃',
    '❇',
    '❈',
    '❉',
    '❊',
    '❋',
    '❄',
    '❅',
    '⋆',
    '≛',
    'ᕯ',
    '✲',
    '࿏',
    '꙰',
    '۞',
    '❀',
    '✿',
    '✾',
    '✽',
    '✼',
    '✻',
    '✺',
    '✹',
    '✸',
    '✷',
    '✶',
    '✵',
    '✴',
    '✳',
    '✲',
    '✱',
    '✥',
    '✤',
    '©',
    '®',
    '✈',
    '✇',
    '☞',
    '✄',
    '✂',
    '☎',
    '☊',
    '✉',
    '✎',
    '✑',
    '✒',
    '¶',
    '✌️',
    '✍️',
    '〈',
    '〉',
    '《',
    '》',
    '【',
    '】',
    '︾',
    '︽',
    '︷',
    '︸',
    '﹜',
    '〖',
    '〗',
    '〘',
    '〙',
    '〚',
    '〛',
    '«',
    '»',
    '〉',
    '〈',
    '♔',
    '♔',
    '♖',
    '♗',
    '♘',
    '♙',
    '♛',
    '♜',
    '♝',
    '♞',
    '♟',
    '♤',
    '♠',
    '♧',
    '♣',
    '♡',
    '♥',
    '♢',
    '♦',
    '♩',
    '♪',
    '♫',
    '♬',
    '♭',
    '≭',
    '≠',
    '؂ø',
    '°',
    '♯',
    '♮',
    '♭',
    '℃',
    '℉',
    'ϟ',
    '☀',
    '☁',
    '💯',
    '☃',
    '☉',
    '☼',
    '☽',
    '☾',
    '♁',
    '♨',
    '❄',
    '❅',
    '❆',
    '↕',
    '↖',
    '↗',
    '↜',
    '↝',
    '↞',
    '↟',
    '↠',
    '↢',
    '↣',
    '↨',
    '↩',
    '↪',
    '↫',
    '↬',
    '↹',
    '↷',
    '↭',
    '↯',
    '⇆',
    '⇇',
    '⇈',
    '⇉',
    '⇊',
    '⇌',
    '⇍',
    '⇎',
    '⇕',
    '⇖',
    '⇗',
    '⇘',
    '⇚',
    '⇛',
    '⇜',
    '⇝',
    '⇞',
    '⇟',
    '⇢',
    '⇠',
    '⇦',
    '⇧',
    '⇨',
    '➛',
    '➙',
    '➔',
    '☍',
    '☌',
    '☋',
    '▶',
    '☈',
    '➜',
    '➝',
    '➢',
    '➣',
    '➤',
    '➥',
    '➦',
    '➴',
    '➳',
    '➲',
    '➱',
    '➯',
    '➮',
    '➮',
    '➬',
    '➫',
    '➵',
    '➶',
    '➷',
    '➸',
    '➹',
    '➺',
    '➻',
    '➼',
    '➽',
    '➾',
    '⤵',
    '⤴',
    '☮',
    '☸',
    '♈',
    '♉',
    '☪',
    '☪',
    '♋',
    '♌',
    '♍',
    '♎',
    '♏',
    '♐',
    '☯',
    '♒',
    '♓',
    '☤',
    '☥',
    '☧',
    '☨',
    '☩',
    '☫',
    '☬',
    '☭',
    '‡',
    '☽',
    '☾',
    '✚',
    '✛',
    '✜',
    '✝',
    '✞',
    '✟',
    '⊹',
    '☢',
    '☠',
    '〷',
    '卐',
    '卍',
    '✢',
    '✡',
    '✠',
    '❖',
    '♆',
    '☣',
    '☦',
    '✇',
  ];
}
