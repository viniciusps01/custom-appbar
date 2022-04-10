import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutternatico',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: CustomStatelessAppBar(),
      ),
    );
  }
}

class CustomStatelessAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomStatelessAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blue,
      child: const Text('Flutternatico'),
    );
  }
}
