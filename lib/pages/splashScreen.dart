import 'package:flutter/material.dart';
import 'package:idealab/pages/home_Page.dart';
import 'package:idealab/pages/root_page.dart';
import 'package:idealab/utils/functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void start() async {
    await getRandQuote();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const RootPage(
          page: HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    start();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/splash.png',
            height: 340,
            width: 356,
          ),
        ),
      ],
    );
  }
}
