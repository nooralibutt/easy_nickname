import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:easy_nickname/src/screens/category_names_tab.dart';
import 'package:easy_nickname/src/screens/decorated_name_tab.dart';
import 'package:flutter/material.dart';

class NickNameScreen extends StatefulWidget {
  const NickNameScreen({Key? key}) : super(key: key);

  @override
  State<NickNameScreen> createState() => _NickNameScreenState();
}

class _NickNameScreenState extends State<NickNameScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  int _getTabsLength(int nameLength, bool showDefaultTabs) {
    int length = 1 + nameLength;
    if (showDefaultTabs) {
      length += CategoryTab.defaultNames.length;
    }
    return length;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final controller = EasyNicknameController.of(context);

    tabController = TabController(
        length:
            _getTabsLength(controller.names.length, controller.showDefaultTabs),
        vsync: this);

    tabController!.addListener(
        () => controller.onTapEvent?.call(context, EventAction.tabChanged));
  }

  @override
  void dispose() {
    super.dispose();
    tabController?.dispose();
    tabController = null;
  }

  @override
  Widget build(BuildContext context) {
    final controller = EasyNicknameController.of(context);
    return DefaultTabController(
      initialIndex: 0,
      length:
          _getTabsLength(controller.names.length, controller.showDefaultTabs),
      child: Scaffold(
        appBar: AppBar(
          leading: CloseButton(
            onPressed: () {
              controller.onTapEvent?.call(context, EventAction.backPressed);
              Navigator.pop(context);
            },
          ),
          title: Text(controller.title),
          centerTitle: true,
          bottom: TabBar(
            onTap: (index) {
              controller.onTapEvent?.call(context, EventAction.tabBarTap);
            },
            isScrollable: true,
            tabs: [
              const Tab(text: 'Decoration'),
              ...controller.names.map((e) => Tab(text: e.title)).toList(),
              if (controller.showDefaultTabs)
                ...CategoryTab.defaultNames
                    .map((e) => Tab(text: e.title))
                    .toList(),
            ],
          ),
        ),
        body: Column(
          children: [
            if (controller.placementBuilder != null)
              controller.placementBuilder!.call(context, Placement.tabBarTop),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  const DecoratedNameTab(),
                  ...controller.names
                      .map((e) => CategoryNamesTab(names: e.names))
                      .toList(),
                  if (controller.showDefaultTabs)
                    ...CategoryTab.defaultNames
                        .map((e) => CategoryNamesTab(names: e.names))
                        .toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
