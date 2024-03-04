import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUSPage extends StatelessWidget {
  const AboutUSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Column(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xffC4C4C4)),
                      child:
                          const Center(child: Icon(CupertinoIcons.arrow_left)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
