import 'package:flutter/material.dart';
import 'package:idealab/components/side-menu.dart';
import 'package:idealab/pages/home_Page.dart';
import 'package:rive/rive.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  late SMIBool isSideBarClosed;
  bool isSideMenuClosed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF252738),
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              width: 288,
              height: MediaQuery.of(context).size.height,
              child: const SideMenu(),
            ),
            Transform.translate(
              offset: Offset(isSideMenuClosed ? 0 : 288, 0),
              child: Transform.scale(
                scale: isSideMenuClosed ? 1 : 0.85,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: const HomePage()),
              ),
            ),
            Visibility(
              visible: isSideMenuClosed,
              child: Positioned(
                  top: 10,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSideMenuClosed = !isSideMenuClosed;
                      });
                    },
                    child: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  )),
            ),
            Visibility(
              visible: !isSideMenuClosed,
              child: Positioned(
                  top: 20,
                  left: 260,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSideMenuClosed = !isSideMenuClosed;
                      });
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
