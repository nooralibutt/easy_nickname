import 'package:easy_nickname/easy_nickname.dart';
import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:easy_nickname/src/screens/nick_name_screen.dart';
import 'package:flutter/material.dart';

class EasyNicknameApp extends StatelessWidget {
  final String title;
  final bool showDefaultTabs;
  final List<CategoryTab> names;

  /// [onTapEvent] will be call on every event preformed by the user
  final EventActionCallback? onTapEvent;

  /// [placementBuilder] is used to build your custom widget at specific places
  final PlacementBuilder? placementBuilder;

  const EasyNicknameApp({
    Key? key,
    required this.title,
    this.showDefaultTabs = true,
    this.names = const [],
    this.onTapEvent,
    this.placementBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyNicknameController(
      title: title,
      showDefaultTabs: showDefaultTabs,
      names: names,
      onTapEvent: onTapEvent,
      placementBuilder: placementBuilder,
      child: const NickNameScreen(),
    );
  }

  static Future launchApp(
    BuildContext context, {
<<<<<<< Updated upstream
    required String title,
    bool showDefaultTabs = true,
    List<CategoryTab> names = const [],
  }) {
    return Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => EasyNicknameApp(
            title: title, showDefaultTabs: showDefaultTabs, names: names),
        fullscreenDialog: true));
  }
=======
    /// this will be the title of the app
    required final String title,

    /// set this to true if you want to show [defaultNames]
    final bool showDefaultTabs = true,

    /// you can add your own names that will be changed to nickname by this package
    final List<CategoryTab> names = const [],

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
              ),
          fullscreenDialog: true));
>>>>>>> Stashed changes
}
