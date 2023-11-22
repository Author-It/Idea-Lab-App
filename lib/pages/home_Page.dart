import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 40),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "This is Home Screen",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
