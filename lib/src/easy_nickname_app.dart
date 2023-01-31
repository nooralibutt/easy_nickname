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

  /// you can copy nickname from [onCopy] and you can add your own implementation
  final void Function(String) onCopy;

  /// [onTapEvent] will be call on every event preformed by the user
  final EventActionCallback? onTapEvent;

  /// [placementBuilder] is used to build your custom widget at specific places
  final PlacementBuilder? placementBuilder;

  /// you can customize nickname text style and and font size etc...
  final TextStyle? nicknameTextStyle;

  const EasyNicknameApp({
    Key? key,
    required this.title,
    this.showDefaultTabs = true,
    this.names = const [],
    this.onTapEvent,
    this.placementBuilder,
    required this.onCopy,
    this.nicknameTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyNicknameController(
      title: title,
      showDefaultTabs: showDefaultTabs,
      names: names,
      onCopy: onCopy,
      onTapEvent: onTapEvent,
      placementBuilder: placementBuilder,
      child: Builder(
          builder: (context) =>
              NickNameScreen(EasyNicknameController.of(context))),
    );
  }

  static void launchApp(
    BuildContext context, {
    /// this will be the title of the app
    required final String title,

    /// set this to true if you want to show [defaultNames]
    final bool showDefaultTabs = true,

    /// you can add your own names that will be changed to nickname by this package
    final List<CategoryTab> names = const [],

    /// you can copy nickname from [onCopy] and you can add your own implementation
    required final void Function(String) onCopy,

    /// [onTapEvent] will be call on every event preformed by the user
    final EventActionCallback? onTapEvent,

    /// [placementBuilder] is used to build your custom widget at specific places
    final PlacementBuilder? placementBuilder,
  }) =>
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EasyNicknameApp(
                title: title,
                showDefaultTabs: showDefaultTabs,
                names: names,
                onTapEvent: onTapEvent,
                placementBuilder: placementBuilder,
                onCopy: onCopy,
              ),
          fullscreenDialog: true));
}
