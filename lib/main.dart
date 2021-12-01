import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter workshop 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _text = "Init";

  void _setText(String text) {
    setState(() {
      _text = text;
    });
  }

  void _futureWaitTenSec() {
    var random = Random();
    var delay = random.nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text(_text)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _futureWaitTenSec,
        tooltip: 'future',
        child: const Icon(Icons.add),
      ),
    );
  }
}
