import 'package:easy_nickname/easy_nickname.dart';
import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:easy_nickname/src/screens/nick_name_screen.dart';
import 'package:flutter/material.dart';

class EasyNicknameApp extends StatelessWidget {
  final String title;
  final bool showDefaultTabs;
  final List<CategoryTab> names;

  const EasyNicknameApp({
    Key? key,
    required this.title,
    this.showDefaultTabs = true,
    this.names = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyNicknameController(
      title: title,
      showDefaultTabs: showDefaultTabs,
      names: names,
      child: const NickNameScreen(),
    );
  }

  static Future launchApp(
    BuildContext context, {
    required String title,
    bool showDefaultTabs = true,
    List<CategoryTab> names = const [],
  }) {
    return Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => EasyNicknameApp(
            title: title, showDefaultTabs: showDefaultTabs, names: names),
        fullscreenDialog: true));
  }
}
