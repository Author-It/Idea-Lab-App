import 'package:flutter/material.dart';
import 'package:idealab/components/side-menu.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: SideMenu(),);
  }
}
