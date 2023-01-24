import 'package:easy_nickname/src/easy_nickname_controller.dart';
import 'package:easy_nickname/src/models/name_category.dart';
import 'package:easy_nickname/src/screens/decorated_name_tab.dart';
import 'package:easy_nickname/src/screens/generated_name_tab.dart';
import 'package:flutter/material.dart';

class NickNameScreen extends StatefulWidget {
  const NickNameScreen({Key? key}) : super(key: key);

  @override
  State<NickNameScreen> createState() => _NickNameScreenState();
}

class _NickNameScreenState extends State<NickNameScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = EasyNicknameController.of(context);
    return DefaultTabController(
      initialIndex: 0,
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text(provider.title),
          centerTitle: true,
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              const Tab(text: 'Decoration'),
              if (provider.names != null)
                ...provider.names!.map((e) => Tab(text: e.title)).toList(),
              if (provider.showDefaultTabs)
                ...NameCategory.defaultNames
                    .map((e) => Tab(text: e.title))
                    .toList(),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const DecoratedNameTab(),
            if (provider.names != null)
              ...provider.names!
                  .map((e) => PreGeneratedNamesTab(names: e.names))
                  .toList(),
            if (provider.showDefaultTabs)
              ...NameCategory.defaultNames
                  .map((e) => PreGeneratedNamesTab(names: e.names))
                  .toList(),
          ],
        ),
      ),
    );
  }
}
