import 'package:easy_nickname/src/models/name_category.dart';
import 'package:flutter/material.dart';

class EasyNicknameController extends InheritedWidget {
  final String title;
  final bool showDefaultTabs;
  final List<NameCategory>? names;
  const EasyNicknameController({
    super.key,
    required this.title,
    required this.showDefaultTabs,
    this.names,
    required super.child,
  });

  static EasyNicknameController? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<EasyNicknameController>();
  }

  static EasyNicknameController of(BuildContext context) {
    final EasyNicknameController? result = maybeOf(context);
    assert(result != null, 'No Presentation found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(EasyNicknameController oldWidget) =>
      title != oldWidget.title;
}
