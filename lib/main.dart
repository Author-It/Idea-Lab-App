import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:idealab/pages/home_Page.dart';
import 'package:idealab/pages/profile_page.dart';
import 'package:idealab/pages/splashScreen.dart';
import 'package:provider/provider.dart';
import 'providers/SelectMenuProvider.dart';

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
    return ChangeNotifierProvider(
      create: (_) => SelectedMenuProvider(),
      child: MaterialApp(
        title: 'LNCT AICTE Idea Lab',
        debugShowCheckedModeBanner: false, // Removed the debug banner
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)
              .copyWith(background: Colors.white),
          // Used 'fromSwatch' and 'primarySwatch' for the color scheme.
          // Also, 'useMaterial3' is not a valid ThemeData property.
        ),
        home: const Material(
            child: SplashScreen(
          key: Key('splashScreen'),
        )),
        // home: const HomePage(),
      ),
    );
  }
}
