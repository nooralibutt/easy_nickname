import 'package:easy_nickname/easy_nickname.dart';
import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:easy_nickname/src/models/name_category.dart';
import 'package:flutter/material.dart';

class EasyNicknameApp extends StatelessWidget {
  final String title;
  final bool showDefaultTabs;
  final List<NameCategory>? names;

  const EasyNicknameApp({
    Key? key,
    required this.title,
    this.showDefaultTabs = true,
    this.names,
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
}
