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
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Text(
          selectedNameStyle ?? 'Some Text',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          /// Use this to launch nickname app
          selectedNameStyle = await EasyNicknameApp.launchApp(context,
              title: 'Nick Name Generator',
              onTapEvent: _handleEventActions,
              placementBuilder: _addPlacements);
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  /// you can add your own placement widget like this
  Widget _addPlacements(BuildContext context, Placement placement) {
    switch (placement) {
      case Placement.tabBarTop:
        return Container(
            height: 50, width: double.infinity, color: Colors.orange);
      default:
        return const SizedBox();
    }
  }

  /// You can handle every action performed by the user like this
  void _handleEventActions(BuildContext context, EventAction event) {
    if (event == EventAction.selectionTap) {
      if (kDebugMode) {
        print('selectionTap Pressed');
      }
    } else if (event == EventAction.tabBarTap) {
      if (kDebugMode) {
        print('TabBar Changed');
      }
    } else if (event == EventAction.tabChanged) {
      if (kDebugMode) {
        print('Tab Swiped');
      }
    }
  }
}
