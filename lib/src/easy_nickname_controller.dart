import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:flutter/material.dart';

typedef PlacementBuilder = Widget Function(BuildContext, Placement);
typedef EventActionCallback = void Function(BuildContext, EventAction);

class EasyNicknameController extends InheritedWidget {
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

  const EasyNicknameController({
    super.key,
    required this.title,
    required this.showDefaultTabs,
    required this.names,
    this.onTapEvent,
    this.placementBuilder,
    required this.onCopy,
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
