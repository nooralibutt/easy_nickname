import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:flutter/material.dart';

typedef PlacementBuilder = Widget Function(BuildContext, Placement);
typedef EventActionCallback = void Function(BuildContext, EventAction);

class EasyNicknameController extends InheritedWidget {
  final String title;
  final bool showDefaultTabs;
  final List<CategoryTab> names;
<<<<<<< Updated upstream
=======

  /// [onTapEvent] will be call on every event preformed by the user
  final EventActionCallback? onTapEvent;

  /// [placementBuilder] is used to build your custom widget at specific places
  final PlacementBuilder? placementBuilder;

>>>>>>> Stashed changes
  const EasyNicknameController({
    super.key,
    required this.title,
    required this.showDefaultTabs,
    required this.names,
    this.onTapEvent,
    this.placementBuilder,
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
