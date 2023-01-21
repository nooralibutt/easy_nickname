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
      initialIndex: 1,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Nick Name Generator'),
          centerTitle: true,
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: "Decoration"),
              Tab(text: "PubG"),
              Tab(text: "Fortnite"),
              Tab(text: "Fortnite"),
              Tab(text: "Fortnite"),
              Tab(text: "Fortnite"),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's cloudy here")),
          ],
        ),
      ),
    );
  }
}
