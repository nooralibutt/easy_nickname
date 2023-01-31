import 'package:easy_nickname/easy_nickname.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedNameStyle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Use [EasyNicknameApp] this to add nickname app to the widget tree
      body: EasyNicknameApp(
        title: 'Nick Name Generator',
        onTapEvent: _handleEventActions,
        placementBuilder: _addPlacements,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// Use this to launch nickname app
          EasyNicknameApp.launchApp(
            context,
            title: 'Nick Name Generator',
            onTapEvent: _handleEventActions,
            placementBuilder: _addPlacements,
            onCopy: (nickname) {
              print(nickname);
              Navigator.pop(context);
            },
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  /// you can add your own placement widget like this
  Widget _addPlacements(BuildContext context, NicknamePlacement placement) {
    switch (placement) {
      case NicknamePlacement.tabBarTop:
        return Container(
            height: 50, width: double.infinity, color: Colors.orange);
      default:
        return const SizedBox();
    }
  }

  /// You can handle every action performed by the user like this
  void _handleEventActions(BuildContext context, NicknameEventAction event) {
    if (event == NicknameEventAction.selectionTap) {
      logPrint(NicknameEventAction.selectionTap.name);
    } else if (event == NicknameEventAction.backPressed) {
      logPrint(NicknameEventAction.backPressed.name);
    } else if (event == NicknameEventAction.tabChanged) {
      logPrint(NicknameEventAction.tabChanged.name);
    }
  }

  void logPrint(String str) {
    if (kDebugMode) {
      print(str);
    }
  }
}
