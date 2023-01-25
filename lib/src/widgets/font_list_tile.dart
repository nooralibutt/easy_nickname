import 'package:easy_nickname/src/utils/unicode_font_converter.dart';
import 'package:flutter/material.dart';

class FontListTile extends StatelessWidget {
  const FontListTile({
    Key? key,
    required this.text,
    required this.font,
    this.symbol,
  }) : super(key: key);

  final String text;
  final UnicodeFont font;
  final String? symbol;

  @override
  Widget build(BuildContext context) {
    final stylizedText = UnicodeFontConverter.encode(text, font, symbol);

    return ListTile(
      onTap: () => Navigator.pop(context, stylizedText),
      tileColor: Theme.of(context).dialogBackgroundColor,
      title: Text(stylizedText, textAlign: TextAlign.center),
    );
  }
}
