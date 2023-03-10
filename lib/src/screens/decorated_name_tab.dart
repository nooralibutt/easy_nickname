import 'dart:math';

import 'package:easy_nickname/src/utils/stylish_symbol.dart';
import 'package:easy_nickname/src/utils/unicode_font_converter.dart';
import 'package:easy_nickname/src/widgets/font_list_tile.dart';
import 'package:flutter/material.dart';

class DecoratedNameTab extends StatefulWidget {
  const DecoratedNameTab({Key? key}) : super(key: key);

  @override
  State<DecoratedNameTab> createState() => _DecoratedNameTabState();
}

class _DecoratedNameTabState extends State<DecoratedNameTab> {
  TextEditingController? controller;

  @override
  void initState() {
    super.initState();

    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    const fonts = UnicodeFont.values;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            keyboardType: TextInputType.name,
            autocorrect: false,
            decoration: const InputDecoration(hintText: 'Enter text here'),
            onChanged: (value) {
              setState(() {});
            },
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemCount: fonts.length,
              itemBuilder: (context, int index) {
                String text = controller?.text.isNotEmpty ?? false
                    ? controller!.text
                    : "Preview";
                final symbol = StylishSymbol
                    .symbols[Random().nextInt(StylishSymbol.symbols.length)];
                text = UnicodeFontConverter.encode(text, fonts[index], symbol);
                return FontListTile(decoratedText: text);
              },
              separatorBuilder: (__, _) => const SizedBox(height: 20),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    controller?.dispose();
    controller = null;
  }
}
