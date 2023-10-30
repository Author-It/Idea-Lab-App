import 'package:flutter/material.dart';
import 'package:idealab/components/side-menu.dart';
import 'package:idealab/pages/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fixed the constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // Used 'fromSwatch' and 'primarySwatch' for the color scheme.
        // Also, 'useMaterial3' is not a valid ThemeData property.
      ),
      home: const RootPage(),
    );
  }
}
