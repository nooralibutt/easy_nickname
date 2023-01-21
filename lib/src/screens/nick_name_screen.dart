import 'package:easy_nickname/src/screens/decorated_name_tab.dart';
import 'package:flutter/material.dart';

class NickNameScreen extends StatefulWidget {
  const NickNameScreen({Key? key}) : super(key: key);

  @override
  State<NickNameScreen> createState() => _NickNameScreenState();
}

class _NickNameScreenState extends State<NickNameScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nick Name Generator'),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: "Decoration"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            DecoratedNameTab(),
          ],
        ),
      ),
    );
  }
}
