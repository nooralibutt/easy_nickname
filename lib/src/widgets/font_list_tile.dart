import 'package:easy_nickname/src/utils/unicode_font_converter.dart';
import 'package:flutter/material.dart';

class FontListTile extends StatelessWidget {
  const FontListTile({
    Key? key,
    required this.text,
    required this.fonts,
  }) : super(key: key);

  final String text;
  final UnicodeFont fonts;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () =>
          Navigator.pop(context, UnicodeFontConverter.encode(text, fonts)),
      tileColor: Theme.of(context).dialogBackgroundColor,
      title: Text(
        UnicodeFontConverter.encode(text, fonts),
        textAlign: TextAlign.center,
      ),
    );
  }
}
