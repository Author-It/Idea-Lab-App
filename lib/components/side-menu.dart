import 'package:flutter/material.dart';
import 'package:idealab/components/InfoCard.dart';
import 'package:idealab/models/riven-assets.dart';
import 'package:idealab/utils/rive_utils.dart';
import 'SideMenuTitle.dart';
import 'package:rive/rive.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  RiveAssets selectedMenu = sideMenus.first;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: 288,
      height: height,
      color: const Color(0xFF252738),
      child: SafeArea(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const InfoCard(name: "Akshat Jain", proff: "Student"),
      ...sideMenus.map(
        (menu) => SideMenuTitle(
          menu: menu,
          press: () {
            menu.input.change(true);
            Future.delayed(const Duration(seconds: 1), () {
              menu.input.change(false);
            });
            setState(() {
              selectedMenu = menu;
            });
          },
          riveonInit: (artboard) {
            StateMachineController controller = RiveUtils.getRiveController(
                artboard,
                stateMachineName: menu.stateMachineName);
            menu.input = controller.findSMI("active") as SMIBool;
          },
          isActive: selectedMenu == menu,
        ),
      ),
    ],
      )),
    );
  }
}
