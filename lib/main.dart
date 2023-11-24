import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:idealab/pages/root_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xFF252738),
    statusBarColor: Color(0xFF252738),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fixed the constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LNCT AICTE Idea Lab',
      debugShowCheckedModeBanner: false, // Removed the debug banner
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // Used 'fromSwatch' and 'primarySwatch' for the color scheme.
        // Also, 'useMaterial3' is not a valid ThemeData property.
      ),
      home: const Material(child: RootPage()),
    );
  }
}
