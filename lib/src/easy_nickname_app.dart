import 'package:easy_nickname/easy_nickname.dart';
import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:easy_nickname/src/screens/nick_name_screen.dart';
import 'package:flutter/material.dart';

class EasyNicknameApp extends StatelessWidget {
  /// this will be the title of the app
  final String title;

  /// set this to true if you want to show [defaultNames]
  final bool showDefaultTabs;

  /// you can add your own names that will be changed to nickname by this package
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
    /// this will be the title of the app
    required final String title,

    /// set this to true if you want to show [defaultNames]
    final bool showDefaultTabs = true,

    /// you can add your own names that will be changed to nickname by this package
    final List<CategoryTab> names = const [],
  }) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EasyNicknameApp(
              title: title, showDefaultTabs: showDefaultTabs, names: names),
          fullscreenDialog: true));
}
