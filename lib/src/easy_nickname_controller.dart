import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:flutter/material.dart';

class EasyNicknameController extends InheritedWidget {
  /// this will be the title of the app
  final String title;

  /// set this to true if you want to show [defaultNames]
  final bool showDefaultTabs;

  /// you can add your own names that will be changed to nickname by this package
  final List<CategoryTab> names;

  const EasyNicknameController({
    super.key,
    required this.title,
    required this.showDefaultTabs,
    required this.names,
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
