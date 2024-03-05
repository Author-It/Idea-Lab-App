import 'package:flutter/material.dart';
import 'package:idealab/pages/home_Page.dart';
import 'package:idealab/pages/profile_page.dart';
import 'package:idealab/pages/root_page.dart';
import 'package:idealab/utils/functions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    start(context); // Pass context here
  }

  void start(BuildContext context) async {
    // Receive context here
    await getRandQuote();

    await Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const RootPage(
            page: HomePage(),
          ),
        ),
        // MaterialPageRoute(
        //   builder: (context) => const ProfilePage(),
        // ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
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
