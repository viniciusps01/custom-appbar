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
      home: const Scaffold(
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
      padding: EdgeInsets.all(
        MediaQuery.of(context).viewPadding.top,
      ),
      height: 100,
      color: Colors.blue,
      child: const Text(
        'Flutternatico',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}

class CustomStatefullAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  const CustomStatefullAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

  @override
  State<CustomStatefullAppBar> createState() => _CustomStatefullAppBarState();
}

class _CustomStatefullAppBarState extends State<CustomStatefullAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        MediaQuery.of(context).viewPadding.top,
      ),
      height: 100,
      color: Colors.blue,
      child: const Text(
        'Flutternatico',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
