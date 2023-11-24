import 'dart:math';

import 'package:flutter/material.dart';
import 'package:idealab/components/side-menu.dart';
import 'package:idealab/models/MenuBtn.dart';
import 'package:idealab/pages/home_Page.dart';
import 'package:idealab/utils/rive_utils.dart';
import 'package:rive/rive.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;

  late SMIBool isSideBarClosed;
  bool isSideMenuClosed = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    )..addListener(() {
        setState(() {});
      });

    animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );

    scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
          parent: _animationController, curve: Curves.fastOutSlowIn),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
              duration: const Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              left: isSideMenuClosed ? -288 : 0,
              width: 288,
              height: MediaQuery.of(context).size.height,
              child: const SideMenu(),
            ),
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(animation.value - 30 * animation.value * pi / 180),
              child: Transform.translate(
                offset: Offset(animation.value * 265, 0),
                child: Transform.scale(
                  scale: scaleAnimation.value,
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    child: HomePage(),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              curve: Curves.fastOutSlowIn,
              top: 16,
              left: isSideMenuClosed ? 0 : 220,
              child: MenuBtn(
                press: () {
                  isSideBarClosed.value = !isSideBarClosed.value;

                  if (isSideMenuClosed) {
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                  }
                  setState(() {
                    isSideMenuClosed = isSideBarClosed.value;
                  });
                },
                riveOnInit: (artboard) {
                  StateMachineController controller =
                      RiveUtils.getRiveController(artboard,
                          stateMachineName: "State Machine");
                  isSideBarClosed = controller.findSMI("isOpen") as SMIBool;
                  isSideBarClosed.value = true;
                },
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
              top: isSideMenuClosed ? 15 : -100,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  print("CHAL GYA BCCCC");
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: Colors.blue.shade50),
                  child: const Center(child: Text("A")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
