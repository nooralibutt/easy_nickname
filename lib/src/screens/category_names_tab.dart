import 'package:easy_nickname/src/utils/stylish_symbol.dart';
import 'package:easy_nickname/src/utils/unicode_font_converter.dart';
import 'package:easy_nickname/src/widgets/font_list_tile.dart';
import 'package:flutter/material.dart';

class CategoryNamesTab extends StatelessWidget {
  final List<String> names;
  const CategoryNamesTab({Key? key, required this.names}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemCount: names.length,
        itemBuilder: (context, int index) {
          final textHashcode = names[index].hashCode;
          final unicodeFont = UnicodeFontConverter.getFontStyle(textHashcode);
          final symbol = StylishSymbol.randomSymbol(textHashcode);
          return FontListTile(
              text: names[index], font: unicodeFont, symbol: symbol);
        },
        separatorBuilder: (__, _) => const SizedBox(height: 20),
      ),
    );
  }
}
