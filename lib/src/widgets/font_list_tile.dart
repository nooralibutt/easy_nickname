import 'package:easy_nickname/easy_nickname.dart';
import 'package:easy_nickname/src/easy_nickname_controller.dart';
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
      onTap: () {
        EasyNicknameController.of(context)
            .onTapEvent
            ?.call(context, EventAction.selectionTap);
        Navigator.pop(context, decoratedText);
      },
      tileColor: Theme.of(context).dialogBackgroundColor,
      title: Text(decoratedText, textAlign: TextAlign.center),
    );
  }
}
