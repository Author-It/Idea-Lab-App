import 'package:flutter/material.dart';
import 'package:idealab/utils/functions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff008F8D),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Text(
                    quote,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '- $author',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
