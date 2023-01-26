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

class _NickNameScreenState extends State<NickNameScreen> {
  int _getTabsLength(int nameLength, bool showDefaultTabs) {
    int length = 1 + nameLength;
    if (showDefaultTabs) {
      length += CategoryTab.defaultNames.length;
    }
    return length;
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
          title: Text(controller.title),
          centerTitle: true,
          bottom: TabBar(
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
        body: TabBarView(
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
    );
  }
}
