import 'package:easy_nickname/easy_nickname.dart';
import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FontListTile extends StatelessWidget {
  const FontListTile({
    Key? key,
    required this.decoratedText,
  }) : super(key: key);

  final String decoratedText;

  @override
  Widget build(BuildContext context) {
    final controller = EasyNicknameController.of(context);

    return ListTile(
      onTap: () {
        controller.onTapEvent?.call(context, NicknameEventAction.selectionTap);
        Clipboard.setData(ClipboardData(text: decoratedText));
        controller.onCopy.call(decoratedText);
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Text has been copied!')));
      },
      tileColor: Theme.of(context).dialogBackgroundColor,
      title: Text(
        decoratedText,
        textAlign: TextAlign.center,
        style: controller.nicknameTextStyle ?? const TextStyle(fontSize: 22),
      ),
    );
  }
}
