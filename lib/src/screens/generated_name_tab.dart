import 'dart:math';

import 'package:easy_nickname/src/utils/unicode_font_converter.dart';
import 'package:flutter/material.dart';

class PreGeneratedNamesTab extends StatelessWidget {
  final List<String> names;
  const PreGeneratedNamesTab({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fonts = UnicodeFont.values;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, int index) {
          final randomFont =
              Random(names[index].hashCode).nextInt(fonts.length);
          return ListTile(
            tileColor: Theme.of(context).dialogBackgroundColor,
            title: Text(
              UnicodeFontConverter.encode(names[index], fonts[randomFont]),
              textAlign: TextAlign.center,
            ),
          );
        },
        separatorBuilder: (__, _) => const SizedBox(height: 20),
      ),
    );
  }
}
