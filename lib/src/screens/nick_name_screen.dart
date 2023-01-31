import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:easy_nickname/src/models/category_tab.dart';
import 'package:easy_nickname/src/screens/category_names_tab.dart';
import 'package:easy_nickname/src/screens/decorated_name_tab.dart';
import 'package:flutter/material.dart';

class NickNameScreen extends StatefulWidget {
  final EasyNicknameController controller;
  const NickNameScreen(this.controller, {Key? key}) : super(key: key);

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
  void initState() {
    super.initState();

    final controller = widget.controller;

    tabController = TabController(
        length:
            _getTabsLength(controller.names.length, controller.showDefaultTabs),
        vsync: this);

    if (controller.onTapEvent != null) {
      tabController?.addListener(() {
        if (tabController?.indexIsChanging == false) {
          controller.onTapEvent?.call(context, NicknameEventAction.tabChanged);
        }
      });
    }
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
    Widget? backButton;
    if (Navigator.of(context).canPop()) {
      backButton = CloseButton(
        onPressed: () {
          controller.onTapEvent?.call(context, NicknameEventAction.backPressed);
          Navigator.pop(context);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: backButton,
        title: Text(controller.title),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          isScrollable: true,
          enableFeedback: true,
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
            controller.placementBuilder!
                .call(context, NicknamePlacement.tabBarTop),
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
    );
  }
}
