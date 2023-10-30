import 'package:flutter/material.dart';
import 'package:idealab/components/side-menu.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Stack(
        children: [
          Text("data"),
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              width: 288,
              child: SideMenu(),
            ),
          ),
        ],
      ),
    );
  }
}
