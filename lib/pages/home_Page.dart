import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
          child: Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff008F8D),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        '"You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose"',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, right: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          '- Dr. Seuss',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
