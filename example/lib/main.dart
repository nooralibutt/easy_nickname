import 'package:easy_nickname/easy_nickname.dart';
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
  void _navigate() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            const EasyNicknameApp(title: 'Nick Name Generator'),
        fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Text('Some Text'),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigate,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
