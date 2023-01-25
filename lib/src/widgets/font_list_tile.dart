import 'package:flutter/material.dart';

class FontListTile extends StatelessWidget {
  const FontListTile({
    Key? key,
    required this.decoratedText,
  }) : super(key: key);

  final String decoratedText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pop(context, decoratedText),
      tileColor: Theme.of(context).dialogBackgroundColor,
      title: Text(decoratedText, textAlign: TextAlign.center),
    );
  }
}
